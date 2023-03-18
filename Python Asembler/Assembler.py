
from pyclbr import Function
import sys
import fileinput

SIZE_OF_ROM = 256
ROM_DATA = ["00" for x in range(SIZE_OF_ROM)]
lineCounter = 0
curr_size = 0

class Instruction_set:

    def __init__(self, name):
        self.name = name
        ROM_ADDR = 0
        self.instructions = []
    
    def num_instructions(self):

        num_instructs = 0

        for instr in self.instructions:
            num_instructs += instr.size()
        
        return num_instructs


class Instruction:
    def __init__(self, instruction, reg1 = None, reg2 = None, memory_addr = None, target = None):
        self.reg1 = reg1
        self.reg2 = reg2
        self.memory_addr = memory_addr
        self.target_reg = target
        self.instruction = instruction
        self.ROM_instruct = ""
        
        if instruction == "lw":
            self.ROM_instruct = format(ord(target)-65, '02x')
            print(self.ROM_instruct)
        elif instruction == "sw":
            self.ROM_instruct = format((ord(target)-65)+2, '02x')
            print(self.ROM_instruct)
        elif instruction == "add":
            self.ROM_instruct = "0" + str((ord(target)-65)+4)
            print(self.ROM_instruct)
        elif instruction == "sub":
            self.ROM_instruct = "1" + str((ord(target)-65)+4)
            print(self.ROM_instruct)
        elif instruction == "mul":
            self.ROM_instruct = "2" + str((ord(target)-65)+4, '02x')
            print(self.ROM_instruct)
        elif instruction == "sl":
            self.ROM_instruct = "3" + str((ord(target)-65)+4)
            print(self.ROM_instruct)
        elif instruction == "sr":
            self.ROM_instruct = "4" + str((ord(target)-65)+4)
            print(self.ROM_instruct)
        elif instruction == "inc":
            if reg1 == "A":
                self.ROM_instruct = "5"+str((ord(target)-65)+4)
            elif reg1 == "B":
                self.ROM_instruct = "6"+str((ord(target)-65)+4)
            print(self.ROM_instruct)
        elif instruction == "dec":
            if reg1 == "A":
                self.ROM_instruct = "7"+str((ord(target)-65)+4)
            elif reg1 == "B":
                self.ROM_instruct = "8"+str((ord(target)-65)+4)
            print(self.ROM_instruct)
        elif instruction == "breq":
            self.ROM_instruct = "96"
            print(self.ROM_instruct)
        elif instruction == "bgtq":
            self.ROM_instruct = "A6"
            print(self.ROM_instruct)
        elif instruction == "bltq":
            self.ROM_instruct = "B6"
            print(self.ROM_instruct)
        elif instruction == "idle":
            self.ROM_instruct = "08"
            print(self.ROM_instruct)
        elif instruction == "ret":
            self.ROM_instruct = "0A"
            print(self.ROM_instruct)
        elif instruction == "deref":
            if reg1 == "A":
                self.ROM_instruct = "0B"
            elif reg1 == "B":
                self.ROM_instruct = "0C"
        elif instruction == "goto":
            self.ROM_instruct = "07"
        elif instruction == "func":
            self.ROM_instruct = "09"
        
        
    def size(self):
        if self.instruction in ["lw", "sw","breq","bgtq","bltq","goto","func"]:
            return 2
        else:
            return 1

instruct_sets = dict()
current_instruct = ""

def read_instructions(infile):
    print("-----------Starting------------")
    for line in fileinput.input(infile):
        line.strip()
        line = line.split()
        if len(line) > 0:
            if line[0] not in ["lw", "sw"]:
                print("-----------Creating new instruction set-----------")
                instruct_sets[line[0]] = Instruction_set(line[0])
                current_instruct = line[0]
                print(instruct_sets)
            elif line[0] in ["lw", "sw"]:
                instruct_sets[current_instruct].instructions.append(
                    Instruction(instruction=line[0], target=line[1], memory_addr=line[2])
                )
                print(instruct_sets[current_instruct])
            elif line[0] in ["add","sub","mul","or"]:
                instruct_sets[current_instruct].instructions.append(
                    Instruction(instruction=line[0], reg1=line[1], reg2=line[2], memory_addr=line[3])
                )
            elif line[0] in ["sl","sr","inc","dec"]:
                instruct_sets[current_instruct].instructions.append(
                    Instruction(instruction=line[0], reg1=line[1], target=line[2])
                )
            elif line[0] in ["beq","bgtq","bltq"]:
                instruct_sets[current_instruct].instructions.append(
                    Instruction(instruction=line[0], reg1=line[1], reg2=line[2], target=line[3])
                )
            elif line[0] in ["idle","ret"]:
                instruct_sets[current_instruct].instructions.append(
                    Instruction(instruction=line[0])
                )
            elif line[0] in ["deref"]:
                instruct_sets[current_instruct].instructions.append(
                    Instruction(instruction=line[0], reg1=line[1])
                )
            elif line[0] in ["goto","func"]:
                instruct_sets[current_instruct].instructions.append(
                    Instruction(instruction=line[0], target=line[1])
                )
            elif line[0] in ["idle"]:
                assert current_instruct in instruct_sets
                instruct_sets[current_instruct].instructions.append(
                    Instruction(instruction=line[0])
                )
    print("-----------Finished reading instructions-----------")

def initialise_Instructions():
    global lineCounter
    global curr_size
    print("-----------Setting initials-----------")
    
    curr_size = instruct_sets["init"].num_instructions()
    print(curr_size)
    instruct_sets["init"].ROM_ADDR = lineCounter
    lineCounter += curr_size

    curr_size = instruct_sets["Mouse_Instruct"].num_instructions()

    ROM_DATA[0xFF] = format(lineCounter, '02x')

    instruct_sets["Mouse_Instruct"].ROM_ADDR = lineCounter
    lineCounter += curr_size

    curr_size = instruct_sets["Timer_Instruct"].num_instructions()

    ROM_DATA[0xFE] = format(lineCounter, '02x')

    instruct_sets["Timer_Instruct"].ROM_ADDR = lineCounter
    lineCounter += curr_size

    print(lineCounter)

def convert_instruction_to_mem():
    global lineCounter
    global curr_size
    global ROM_DATA
    print("-----------Start converting-----------")

    for ins in instruct_sets.values():

        if ins.name not in ["init", "Mouse_Instruct", "Timer_Instruct"]:
            curr_size = ins.num_instructions()
            print(ins.name, curr_size)

            ins.ROM_ADDR = lineCounter
            lineCounter += curr_size

    for ins in instruct_sets.values():
        offset = 0
        print(ins.name)
        print(ins.ROM_ADDR)

        for x in ins.instructions:
            #print(x.instruction)
            #print(ins.ROM_ADDR + offset)
            if x.instruction in ["lw", "sw"]:
                ROM_DATA[ins.ROM_ADDR + offset] = x.ROM_instruct
                ROM_DATA[ins.ROM_ADDR + offset+1] = x.memory_addr
                offset += 2
            if x.instruction in ["beq", "bgtq", "bltq", "goto","func"]:
                ROM_DATA[ins.ROM_ADDR + offset] = x.ROM_instruct
                ROM_DATA[ins.ROM_ADDR + offset+1] = format(instruct_sets[x.target].ROM_ADDR, '02X')
                offset += 2
            else: 
                #print(x.ROM_instruct)
                ROM_DATA[ins.ROM_ADDR + offset] = x.ROM_instruct
                offset += 1

    print(ROM_DATA)
    print("-----------Finished converting-----------")

def print_to_file(outFile):
    global ROM_DATA
    print("-----------Writing to a file-----------")

    with open(outFile, 'w') as file:
        for line in ROM_DATA:
            file.write(str(line)+"\n")
    
    print("-----------Finished writing to a file-----------")
                
def compile(): 
    #inFile = sys.argv[1]
    #outFile = sys.argv[2]
    inFile = "basic_instructs.txt"
    outFile = "ROM_Basic.txt"
    read_instructions(inFile)
    initialise_Instructions()
    convert_instruction_to_mem()
    print_to_file(outFile)

compile()
