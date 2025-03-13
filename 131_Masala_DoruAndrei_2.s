.data

matrice: .space 1600
mesaj: .space 100
cript: .space 100
m: .space 4
n: .space 4
p: .space 4 
k: .space 4
i: .space 4
x: .space 4
linie: .space 4
coloana: .space 4
nrlinii: .space 4
nrcoloane: .space 4
nrvecini: .space 4
fpi: .space 4
fpo: .space 4
a: .space 4
fileNamein: .asciz "in.txt"
fileNameout: .asciz "out.txt"
moder: .asciz "r"
modew: .asciz "w"
formatInt: .asciz "%d "
formatChar: .asciz "%s"
newLine: .asciz "\n"

.text
.global main

main:

    pushl $moder
	pushl $fileNamein
	call fopen
	pop %ebx
	pop %ebx

    movl %eax, fpi

    pushl $modew
	pushl $fileNameout
	call fopen
	pop %ebx
	pop %ebx

    movl %eax, fpo

    pushl $m
	pushl $formatInt
    pushl fpi
	call fscanf
	popl %ebx
	popl %ebx
    popl %ebx
	
	pushl $n
	pushl $formatInt
    pushl fpi
	call fscanf
	popl %ebx
	popl %ebx
    popl %ebx
	
	pushl $p
	pushl $formatInt
    pushl fpi
	call fscanf
	popl %ebx
	popl %ebx
    popl %ebx

    lea matrice, %edi

movl m, %eax
addl $2, %eax
movl %eax, nrlinii
movl n, %eax
addl $2, %eax
movl %eax, nrcoloane
movl p, %eax


movl $0, a
for_a:
    movl a, %ecx
    cmp p, %ecx
    je iesire_a

    pushl $linie
	pushl $formatInt
    pushl fpi
	call fscanf
	popl %ebx
	popl %ebx
    popl %ebx

    pushl $coloana
	pushl $formatInt
    pushl fpi
	call fscanf
   	popl %ebx
	popl %ebx
    popl %ebx

	movl linie, %eax
    incl %eax
    movl $0, %edx
	mull nrcoloane
	addl coloana, %eax
    incl %eax
    lea matrice, %edi
	movl $1, (%edi, %eax, 4)


    addl $1, a
    jmp for_a

iesire_a:


    pushl $k
	pushl $formatInt
    pushl fpi
	call fscanf
   	popl %ebx
	popl %ebx
    popl %ebx

lea matrice, %edi
for_i:

    movl i,%ecx
    cmp %ecx, k
    je iesire_i

    movl $1, linie

    for_linie:
        movl linie, %ecx
        cmp m, %ecx
        jg iesire_linie
        
        movl $1, coloana

        for_coloana:
            movl coloana, %ecx
            cmp n, %ecx
            jg continua_linie
            

            movl linie, %eax 
            xor %edx, %edx
            mull nrcoloane
            addl coloana, %eax
                
            movl $0, nrvecini


            stanga_sus:
            movl %eax, %ecx
            subl nrcoloane, %ecx
            subl $1, %ecx
            movl $0, %ebx              
            cmp (%edi,%ecx,4), %ebx
            je sus
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je sus
            addl $1, nrvecini                                              
            
            sus:
            movl %eax, %ecx
            subl nrcoloane, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx 
            je sus_dreapta
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je sus_dreapta
            addl $1, nrvecini

            sus_dreapta:
            movl %eax, %ecx
            subl nrcoloane, %ecx
            addl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je stanga
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je stanga
            addl $1, nrvecini
            
            stanga:
            movl %eax, %ecx
            subl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je dreapta
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je dreapta
            addl $1, nrvecini

            dreapta:
            movl %eax, %ecx
            addl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je jos_stanga
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je jos_stanga
            addl $1, nrvecini

            jos_stanga:
            movl %eax, %ecx
            addl nrcoloane, %ecx
            subl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je jos
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je jos
            addl $1, nrvecini

            jos:
            movl %eax, %ecx
            addl nrcoloane, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je jos_dreapta
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je jos_dreapta
            addl $1, nrvecini

            jos_dreapta:
            movl %eax, %ecx
            addl nrcoloane, %ecx
            addl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je stare
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je stare
            addl $1, nrvecini
        
            stare:       
               
                movl $2, %ebx 
                cmp %ebx, nrvecini
                jl subpopulare
                cmp %ebx, nrvecini
                je continua
                movl $3, %ebx
                cmp nrvecini, %ebx
                je continuitate
                jmp suprapopulare
                
                subpopulare:
                    movl $0, %ebx
                    cmp (%edi,%eax,4), %ebx
                    je continua
                    movl $3, (%edi,%eax,4)
                    jmp continua

                continuitate:
                    movl $0, %ebx
                    cmp (%edi,%eax,4), %ebx
                    je e_moarta
                    jmp continua
                    e_moarta:
                        movl $2, (%edi,%eax,4)
                        jmp continua
                
                suprapopulare:
                    movl $0, %ebx
                    cmp (%edi,%eax,4), %ebx
                    je continua
                    movl $3, (%edi,%eax,4)
            continua:
            addl $1, coloana
            jmp for_coloana

    continua_linie:
        addl $1, linie
        jmp for_linie


iesire_linie:

lea matrice, %edi
movl $1, linie
pentru_linie:
    
    movl linie, %ecx
    cmp m, %ecx
    jg iesire_linii
    movl $1, coloana
    pentru_coloane:
        
        movl coloana, %ecx
        cmp n, %ecx
        jg continua_linie2

        movl linie, %eax  
        xor %edx, %edx 
        mull nrcoloane
        addl coloana, %eax

        movl $2, %ebx
        cmp %ebx, (%edi,%eax,4)
        je reinvie 
        movl $3, %ebx
        cmp %ebx, (%edi,%eax,4)
        je moare
        jmp nu_se_schimba

        moare:
        movl $0, (%edi,%eax,4)
        jmp nu_se_schimba

        reinvie:
        movl $1, (%edi,%eax,4)
        
        nu_se_schimba:
        addl $1, coloana
        jmp pentru_coloane
    
    continua_linie2:
    addl $1, linie
    jmp pentru_linie


iesire_linii:

continua_i:
    addl $1, i
    jmp for_i

iesire_i:
lea matrice, %edi
movl $1, linie
	for_lines:
		movl linie, %ecx
		cmp m, %ecx
		jg et_exit
		movl $1, coloana
		for_columns:
			movl coloana, %ecx
			cmp n, %ecx
			jg continuare
			
            xor %edx, %edx
			movl linie, %eax
			mull nrcoloane
			addl coloana, %eax
            lea matrice, %edi
			movl (%edi, %eax, 4), %edx
			
			pushl %edx
			push $formatInt
            pushl fpo
			call fprintf
			pop %ebx
			pop %ebx
            pop %ebx
			
			pushl $0
			call fflush
			pop %ebx
			
			addl $1, coloana
			jmp for_columns
			
			
	continuare:
		pushl $newLine
        pushl $formatChar
        pushl fpo
        call fprintf
        pop %ebx
        pop %ebx
        pop %ebx

		addl $1, linie
		jmp for_lines

et_exit:
    mov $1, %eax
    xor %ebx, %ebx
    int $0x80

