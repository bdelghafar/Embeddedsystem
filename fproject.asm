
_main:

;fproject.c,3 :: 		void main() {
;fproject.c,4 :: 		ADCON1=0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;fproject.c,5 :: 		trisb=0x00;
	CLRF       TRISB+0
;fproject.c,6 :: 		trise=0x00;
	CLRF       TRISE+0
;fproject.c,7 :: 		trisc=0x00;
	CLRF       TRISC+0
;fproject.c,8 :: 		trisa=0xff;
	MOVLW      255
	MOVWF      TRISA+0
;fproject.c,9 :: 		trisd=0x00;
	CLRF       TRISD+0
;fproject.c,10 :: 		while(1)
L_main0:
;fproject.c,13 :: 		while (porta.b0==0){
L_main2:
	BTFSC      PORTA+0, 0
	GOTO       L_main3
;fproject.c,14 :: 		porte=0x00;
	CLRF       PORTE+0
;fproject.c,15 :: 		portc=0x00;
	CLRF       PORTC+0
;fproject.c,16 :: 		while(porta.b1==1)
L_main4:
	BTFSS      PORTA+0, 1
	GOTO       L_main5
;fproject.c,18 :: 		porte.b0=1;
	BSF        PORTE+0, 0
;fproject.c,19 :: 		portc.b7=1;
	BSF        PORTC+0, 7
;fproject.c,20 :: 		if(porta.B0==1)
	BTFSS      PORTA+0, 0
	GOTO       L_main6
;fproject.c,21 :: 		break;
	GOTO       L_main5
L_main6:
;fproject.c,23 :: 		}
	GOTO       L_main4
L_main5:
;fproject.c,24 :: 		while(porta.B2==1)
L_main7:
	BTFSS      PORTA+0, 2
	GOTO       L_main8
;fproject.c,26 :: 		portc.B5=0;
	BCF        PORTC+0, 5
;fproject.c,27 :: 		porte.b2=0;
	BCF        PORTE+0, 2
;fproject.c,28 :: 		porte.B0=0;
	BCF        PORTE+0, 0
;fproject.c,29 :: 		portc.B7=0;
	BCF        PORTC+0, 7
;fproject.c,30 :: 		porte.B1=1;
	BSF        PORTE+0, 1
;fproject.c,31 :: 		portc.b6=1;
	BSF        PORTC+0, 6
;fproject.c,32 :: 		delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;fproject.c,33 :: 		if(porta.B0==1)
	BTFSS      PORTA+0, 0
	GOTO       L_main10
;fproject.c,34 :: 		break;
	GOTO       L_main8
L_main10:
;fproject.c,35 :: 		}
	GOTO       L_main7
L_main8:
;fproject.c,36 :: 		while(porta.B3==1)
L_main11:
	BTFSS      PORTA+0, 3
	GOTO       L_main12
;fproject.c,38 :: 		porte.B1=0 ;
	BCF        PORTE+0, 1
;fproject.c,39 :: 		portc.b6=0;
	BCF        PORTC+0, 6
;fproject.c,40 :: 		portc.b5=1;
	BSF        PORTC+0, 5
;fproject.c,41 :: 		porte.b2=1;
	BSF        PORTE+0, 2
;fproject.c,42 :: 		if(porta.B0==1)
	BTFSS      PORTA+0, 0
	GOTO       L_main13
;fproject.c,43 :: 		break;
	GOTO       L_main12
L_main13:
;fproject.c,44 :: 		}
	GOTO       L_main11
L_main12:
;fproject.c,45 :: 		}
	GOTO       L_main2
L_main3:
;fproject.c,47 :: 		while (porta.B0==1){
L_main14:
	BTFSS      PORTA+0, 0
	GOTO       L_main15
;fproject.c,48 :: 		portc=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;fproject.c,49 :: 		j=2;
	MOVLW      2
	MOVWF      _j+0
;fproject.c,50 :: 		i=3;
	MOVLW      3
	MOVWF      _i+0
;fproject.c,51 :: 		porte.B2=0;
	BCF        PORTE+0, 2
;fproject.c,52 :: 		porte.B0=0;
	BCF        PORTE+0, 0
;fproject.c,53 :: 		portc.b5=1;
	BSF        PORTC+0, 5
;fproject.c,54 :: 		portc.B6=0;
	BCF        PORTC+0, 6
;fproject.c,55 :: 		portc.b7=0;
	BCF        PORTC+0, 7
;fproject.c,57 :: 		for(j;j>=0;j--)
L_main16:
	MOVLW      0
	SUBWF      _j+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main17
;fproject.c,59 :: 		portb=j;
	MOVF       _j+0, 0
	MOVWF      PORTB+0
;fproject.c,60 :: 		for(i;i>-1;i--)
L_main19:
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main54
	MOVF       _i+0, 0
	SUBLW      255
L__main54:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
;fproject.c,62 :: 		if(porta.B0==0)
	BTFSC      PORTA+0, 0
	GOTO       L_main22
;fproject.c,63 :: 		break;
	GOTO       L_main20
L_main22:
;fproject.c,64 :: 		if(i==3&&j==2)
	MOVF       _i+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main25
	MOVF       _j+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main25
L__main52:
;fproject.c,65 :: 		porte.b1=1;
	BSF        PORTE+0, 1
L_main25:
;fproject.c,66 :: 		if(j==2&&i==0)
	MOVF       _j+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main28
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main28
L__main51:
;fproject.c,68 :: 		porte.b1=0;
	BCF        PORTE+0, 1
;fproject.c,69 :: 		porte.b2=1;
	BSF        PORTE+0, 2
;fproject.c,70 :: 		}
L_main28:
;fproject.c,71 :: 		portd=i;
	MOVF       _i+0, 0
	MOVWF      PORTD+0
;fproject.c,72 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	DECFSZ     R11+0, 1
	GOTO       L_main29
	NOP
	NOP
;fproject.c,73 :: 		if(i==0)
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main30
;fproject.c,74 :: 		break;
	GOTO       L_main20
L_main30:
;fproject.c,60 :: 		for(i;i>-1;i--)
	DECF       _i+0, 1
;fproject.c,75 :: 		}
	GOTO       L_main19
L_main20:
;fproject.c,76 :: 		if(i==0)
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main31
;fproject.c,77 :: 		i=9;
	MOVLW      9
	MOVWF      _i+0
L_main31:
;fproject.c,78 :: 		if(j==0)
	MOVF       _j+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main32
;fproject.c,79 :: 		break;
	GOTO       L_main17
L_main32:
;fproject.c,80 :: 		if(porta.B0==0)
	BTFSC      PORTA+0, 0
	GOTO       L_main33
;fproject.c,81 :: 		break;
	GOTO       L_main17
L_main33:
;fproject.c,57 :: 		for(j;j>=0;j--)
	DECF       _j+0, 1
;fproject.c,82 :: 		}
	GOTO       L_main16
L_main17:
;fproject.c,83 :: 		if(porta.B0==0)
	BTFSC      PORTA+0, 0
	GOTO       L_main34
;fproject.c,84 :: 		break;
	GOTO       L_main15
L_main34:
;fproject.c,85 :: 		porte.B0=1;
	BSF        PORTE+0, 0
;fproject.c,86 :: 		portc.b5=0;
	BCF        PORTC+0, 5
;fproject.c,87 :: 		porte.b2=0;
	BCF        PORTE+0, 2
;fproject.c,88 :: 		portc.b6=1;
	BSF        PORTC+0, 6
;fproject.c,89 :: 		j=1;
	MOVLW      1
	MOVWF      _j+0
;fproject.c,90 :: 		i=5;
	MOVLW      5
	MOVWF      _i+0
;fproject.c,91 :: 		for(j;j>=0;j--)
L_main35:
	MOVLW      0
	SUBWF      _j+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main36
;fproject.c,93 :: 		portb=j;
	MOVF       _j+0, 0
	MOVWF      PORTB+0
;fproject.c,94 :: 		for(i;i>=0;i--)
L_main38:
	MOVLW      0
	SUBWF      _i+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main39
;fproject.c,96 :: 		if(porta.B0==0)
	BTFSC      PORTA+0, 0
	GOTO       L_main41
;fproject.c,97 :: 		break;
	GOTO       L_main39
L_main41:
;fproject.c,98 :: 		if(i==2&&j==1)
	MOVF       _i+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main44
	MOVF       _j+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main44
L__main50:
;fproject.c,100 :: 		portc.b6=0;
	BCF        PORTC+0, 6
;fproject.c,101 :: 		portc.b7=1;
	BSF        PORTC+0, 7
;fproject.c,102 :: 		}
L_main44:
;fproject.c,103 :: 		portd=i;
	MOVF       _i+0, 0
	MOVWF      PORTD+0
;fproject.c,104 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main45:
	DECFSZ     R13+0, 1
	GOTO       L_main45
	DECFSZ     R12+0, 1
	GOTO       L_main45
	DECFSZ     R11+0, 1
	GOTO       L_main45
	NOP
	NOP
;fproject.c,105 :: 		if(i==0)
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main46
;fproject.c,107 :: 		i=9;
	MOVLW      9
	MOVWF      _i+0
;fproject.c,108 :: 		break;
	GOTO       L_main39
;fproject.c,109 :: 		}
L_main46:
;fproject.c,94 :: 		for(i;i>=0;i--)
	DECF       _i+0, 1
;fproject.c,110 :: 		}
	GOTO       L_main38
L_main39:
;fproject.c,111 :: 		if(porta.B0==0)
	BTFSC      PORTA+0, 0
	GOTO       L_main47
;fproject.c,112 :: 		break;
	GOTO       L_main36
L_main47:
;fproject.c,113 :: 		if(j==0)
	MOVF       _j+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main48
;fproject.c,114 :: 		break;
	GOTO       L_main36
L_main48:
;fproject.c,91 :: 		for(j;j>=0;j--)
	DECF       _j+0, 1
;fproject.c,115 :: 		}
	GOTO       L_main35
L_main36:
;fproject.c,116 :: 		if(porta.B0==0)
	BTFSC      PORTA+0, 0
	GOTO       L_main49
;fproject.c,117 :: 		break;
	GOTO       L_main15
L_main49:
;fproject.c,118 :: 		}
	GOTO       L_main14
L_main15:
;fproject.c,119 :: 		}
	GOTO       L_main0
;fproject.c,120 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
