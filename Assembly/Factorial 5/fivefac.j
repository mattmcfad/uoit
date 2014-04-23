;Matthew McFadyen 100393593 UOIT
;Compilers CSCI A3 Q1
;Compute factorial of 5


.class public fivefac
.super java/lang/Object

.method public init()V
  aload_0
  invokenonvirtual java/lang/Object/init()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack  10
  .limit locals 10
	

  	; for(i=1; i<6; i++)

  			; i = 1
  			ldc 1 
  			istore 0

  			; j = 1
  			ldc 1
  			istore 1

  	begin_for:
            getstatic java/lang/System/out Ljava/io/PrintStream;
            
            ;new String Builder
            new java/lang/StringBuilder
            dup
            
            ;run StringBuilder constructor
            invokespecial java/lang/StringBuilder/<init>()V
 			
 			; --------------

 			;load i onto stack
            iload 0
        	
            ;append i into stringbuilder
            invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
            
            ; --------------

            ;load string onto stack
            ldc " "

            ;append string into stringbuilder
            invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;

            ; --------------

            ; j = j * i
            ;append j & i onto stack
            iload 	0
            iload	1
            imul
            dup			;dup so we can store j and output result
            istore 	1
          	
          	;append result j to string builder
          	invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;


            ; --------------

            ;build string
            invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;

            ;print string
            invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

            ; --------------

            ;test end conditions

            ;i = i + 1
            iload 	0
            ldc 	1
            iadd
            istore 	0

            ;computer i - 6
            iload 	0
            ldc 	6
            isub
            ifeq	end_for
            goto	begin_for
    end_for:

    		;System.out.println("All done")
            ;getstatic java/lang/System/out Ljava/io/PrintStream;
            ;ldc "All done"
            ;invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V



  return
.end method