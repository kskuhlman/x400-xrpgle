/*
 * generated by Xtext 2.15.0-SNAPSHOT
 */
package world.as500.rpgle.xtext.tests

import world.as500.rpgle.xtext.xRPGLE.Model
import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.extensions.InjectionExtension
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.^extension.ExtendWith

@ExtendWith(InjectionExtension)
@InjectWith(XRPGLEInjectorProvider)
class XRPGLEParsingTest {
	@Inject
	ParseHelper<Model> parseHelper
	
//	@Test
//	def void loadModel() {
//		val result = parseHelper.parse('''
//			Hello Xtext!
//		''')
//		Assertions.assertNotNull(result)
//		val errors = result.eResource.errors
//		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
//	}
//}

	@Test
	def void testControl01() {
		val result = parseHelper.parse('''
			CTL-OPT ALLOC(*STGMDL);
			CTL-OPT ALLOC(*TERASPACE);
			CTL-OPT ALLOC(*SNGLVL) ACTGRP(*STGMDL);

			CTL-OPT ACTGRP(*NEW);
			CTL-OPT ACTGRP(*CALLER);
			CTL-OPT ACTGRP('CustActGrp');

			CTL-OPT ALTSEQ(*NONE);
			CTL-OPT ALTSEQ(*SRC);
			CTL-OPT ALTSEQ(*EXT);

			CTL-OPT ALWNULL;
			CTL-OPT ALWNULL(*NO);
			CTL-OPT ALWNULL(*INPUTONLY);
			CTL-OPT ALWNULL(*USRCTL);

			CTL-OPT AUT(*LIBCRTAUT);
			CTL-OPT AUT(*ALL);
			CTL-OPT AUT(*CHANGE);
			CTL-OPT AUT(*USE);
			CTL-OPT AUT(*EXCLUDE);
			CTL-OPT AUT('Aut Option String');

			CTL-OPT BNDDIR('Dir01');
			CTL-OPT BNDDIR('Dir02' : 'Dir03');

			CTL-OPT CCSID(*EXACT);
			CTL-OPT CCSID(*CHAR:*JOBRUN);
			CTL-OPT CCSID(*CHAR:*JOBRUNMIX);
			CTL-OPT CCSID(*CHAR:*UTF8);
			CTL-OPT CCSID(*CHAR:*HEX);
			CTL-OPT CCSID(*CHAR:1234);
			CTL-OPT CCSID(*GRAPH:*JOBRUN);
			CTL-OPT CCSID(*GRAPH:*SRC);
			CTL-OPT CCSID(*GRAPH:*HEX);
			CTL-OPT CCSID(*GRAPH:*IGNORE);
			CTL-OPT CCSID(*GRAPH:1234);
			CTL-OPT CCSID(*UCS2:*UTF16);
			CTL-OPT CCSID(*UCS2:123);

			CTL-OPT CCSIDCVT(*EXCP);
			CTL-OPT CCSIDCVT(*LIST);

			CTL-OPT COPYNEST(123);

			CTL-OPT COPYRIGHT('CopyRight String');

			CTL-OPT CURSYM('CurSym String');

			CTL-OPT CVTOPT(*DATETIME);
			CTL-OPT CVTOPT(*NODATETIME);
			CTL-OPT CVTOPT(*GRAPHIC);
			CTL-OPT CVTOPT(*NOGRAPHIC);
			CTL-OPT CVTOPT(*VARCHAR);
			CTL-OPT CVTOPT(*NOVARCHAR);
			CTL-OPT CVTOPT(*VARGRAPHIC);
			CTL-OPT CVTOPT(*NOVARGRAPHIC);
			CTL-OPT CVTOPT(*DATETIME:*NOVARGRAPHIC);

			CTL-OPT DCLOPT(*NOCHGDSLEN);

			CTL-OPT DEBUG;
			CTL-OPT DEBUG(*INPUT);
			CTL-OPT DEBUG(*DUMP);
			CTL-OPT DEBUG(*XMLSAX);
			CTL-OPT DEBUG(*NO);
			CTL-OPT DEBUG(*YES);

			CTL-OPT DECEDIT(*JOBRUN);
			CTL-OPT DECEDIT('DecEdit String Option');

			CTL-OPT DECPREC(63);

			CTL-OPT DFTACTGRP(*YES);
			CTL-OPT DFTACTGRP(*NO);

			CTL-OPT DFTNAME('DftName String Option');

			CTL-OPT ENBPFRCOL(*PEP);
			CTL-OPT ENBPFRCOL(*ENTRYEXIT);
			CTL-OPT ENBPFRCOL(*FULL);

			CTL-OPT EXPROPTS(*MAXDIGITS);
			CTL-OPT EXPROPTS(*RESDECPOS);

			CTL-OPT EXTNININT(*NO);
			CTL-OPT EXTNININT(*YES);

			CTL-OPT FIXNBR(*ZONED);
			CTL-OPT FIXNBR(*NOZONED);
			CTL-OPT FIXNBR(*INPUTPACKED);
			CTL-OPT FIXNBR(*NOINPUTPACKED);

			CTL-OPT FLTDIV(*NO);
			CTL-OPT FLTDIV(*YES);

			CTL-OPT FORMSALIGN(*NO);
			CTL-OPT FORMSALIGN(*YES);

			CTL-OPT FTRANS(*NONE);
			CTL-OPT FTRANS(*SRC);

			CTL-OPT GENLVL(1234);

			CTL-OPT INDENT(*NONE);
			CTL-OPT INDENT('IndentString Option');

			CTL-OPT INTPREC(10);
			CTL-OPT INTPREC(20);

			CTL-OPT LANGID(*JOBRUN);
			CTL-OPT LANGID(*JOB);
			CTL-OPT LANGID('LangID String Option');

			CTL-OPT MAIN(MainProcName);

			CTL-OPT NOMAIN;

			CTL-OPT OPENOPT(*INZOFL);
			CTL-OPT OPENOPT(*NOINZOFL);
			CTL-OPT OPENOPT(*CVTDATA);
			CTL-OPT OPENOPT(*NOCVTDATA);

			CTL-OPT OPTIMIZE(*NONE);
			CTL-OPT OPTIMIZE(*BASIC);
			CTL-OPT OPTIMIZE(*FULL);

			CTL-OPT OPTION(*XREF);
			CTL-OPT OPTION(*NOXREF);
			CTL-OPT OPTION(*SECLVL);
			CTL-OPT OPTION(*NOSECLVL);
			CTL-OPT OPTION(*SHOWCPY);
			CTL-OPT OPTION(*NOSHOWCPY);
			CTL-OPT OPTION(*EXPDDS);
			CTL-OPT OPTION(*NOEXPDDS);
			CTL-OPT OPTION(*EXT);
			CTL-OPT OPTION(*NOEXT);
			CTL-OPT OPTION(*SHOWSKP);
			CTL-OPT OPTION(*NOSHOWSKP);
			CTL-OPT OPTION(*SRCSTMT);
			CTL-OPT OPTION(*NOSRCSTMT);
			CTL-OPT OPTION(*DEBUG);
			CTL-OPT OPTION(*NODEBUG);
			CTL-OPT OPTION(*UNREF);
			CTL-OPT OPTION(*NOUNREF);
			ctl-opt option(*XREF : *NOUNREF);

			CTL-OPT PGMINFO(*PCML);
			CTL-OPT PGMINFO(*NO);
			CTL-OPT PGMINFO(*DCLCASE);

			CTL-OPT PGMINFO(*PCML:*MODULE);

			CTL-OPT PRFDTA(*NOCOL);
			CTL-OPT PRFDTA(*COL);

			CTL-OPT SRTSEQ(*HEX);
			CTL-OPT SRTSEQ(*JOB);
			CTL-OPT SRTSEQ(*JOBRUN);
			CTL-OPT SRTSEQ(*LANGIDUNQ);
			CTL-OPT SRTSEQ(*LANGIDSHR);
			CTL-OPT SRTSEQ('StringOption');

			CTL-OPT STGMDL(*INHERIT);
			CTL-OPT STGMDL(*SNGLVL);
			CTL-OPT STGMDL(*TERASPACE);

			CTL-OPT TEXT(*SRCMBRTXT);
			CTL-OPT TEXT(*BLANK);
			CTL-OPT TEXT('TextString Option');

			CTL-OPT THREAD(*CONCURRENT);
			CTL-OPT THREAD(*SERIALIZE);

			CTL-OPT TRUNCNBR(*YES);
			CTL-OPT TRUNCNBR(*NO);
			CTL-OPT USRPRF(*USER);
			CTL-OPT USRPRF(*OWNER);

			CTL-OPT Validate(*NODATETIME);
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testControl02() {
		val result = parseHelper.parse('''
			CTL-OPT 
			CCSID(*EXACT)
			// *CHAR
				CCSID(*CHAR:*JOBRUN)
				CCSID(*CHAR:*JOBRUNMIX)
				CCSID(*CHAR:*UTF8)
				CCSID(*CHAR:*HEX)
				CCSID(*CHAR:1234)
			;

			// *GRAPH
			CTL-OPT CCSID(*GRAPH:*JOBRUN);

			CTL-OPT CCSID(*GRAPH:*SRC)
						CCSID(*GRAPH:*HEX);
			CTL-OPT CCSID(*GRAPH:*IGNORE);
			CTL-OPT CCSID(*GRAPH:9876);

			// *UCS2
			CTL-OPT CCSID(*UCS2 : *UTF16);
			CTL-OPT CCSID(*UCS2:1122);
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testDeclarations() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind; //IND = Indicator = Switch = ON/OFF = TRUE/FALSE
			DCL-S sCharA char(10);
			DCL-S sIntA  int(10);
			
			DCL-S sBoolB ind      inz(*ON);
			DCL-S sCharB char(11) inz('A');
			DCL-S sIntB  int(5)   inz(99);
			
			DCL-C cBoolA *ON;
			DCL-C cCharA '*OFF';
			DCL-C cIntA  999;

			DCL-DS ds01;
			END-DS;

			DCL-DS *N;
			END-DS;

			DCL-DS ds02 qualified;
			END-DS;

			DCL-DS *N len(100);
				sfChar char(10) inz;
			END-DS;

			DCL-DS ds03;
				DCL-SUBF sfInt03 int(10);
				sfBoolA03 ind inz(*ON);
				DCL-SUBF sfChar03 char(10);
				*N char(10); //UnNamed SubField
			END-DS;

			DCL-DS ds05;
				DCL-SUBF sfInt05 int(10);
				sfBool05 ind inz(*ON);
				DCL-SUBF sfChar05 char(10);
				DCL-DS ds06;
					sfChar06 char(10);
				END-DS;
				*N char(10); //UnNamed SubField
			END-DS;

			DCL-PR prBool ind;
			END-PR;

			DCL-PR prBool ind;
			END-PR;

			DCL-PR prChar char(10);
			END-PR;

			DCL-PR prInt int(10);
			END-PR;
			
			DCL-PR prInt int(10);
				pChar char(10);
				pInt  int(10) inz(88);
			END-PR;
			
			DCL-PR prInt int(10);
				pChar char(10);
				*N ind;
				DCL-PARM pInt  int(10) inz(88);
			END-PR;

			DCL-PI prBool ind;
			END-PI;

			DCL-PI prBool ind;
			END-PI;

			DCL-PI prChar char(10);
			END-PI;

			DCL-PI prInt int(10);
			END-PI;
			
			DCL-PI prInt int(10);
				pChar char(10);
				pInt  int(10) inz(88);
			END-PI;
			
			DCL-PI prInt int(10);
				pChar char(10);
				DCL-PARM pInt  int(10) inz(88);
			END-PI;
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testAssignment01() {
		val result = parseHelper.parse('''
		// Simple Assignments
			DCL-S sIntA  int(10);
			DCL-S sIntB  int(10);

			DCL-S sCharA char(10);

			DCL-PR prIntA int(10);
			END-PR;

			sIntA   = 1;
			sIntA  += 1;
			sIntA  -= 1;
			sIntA  *= 1;
			sIntA  /= 1;
			sIntA **= 1;

			sIntA   = sIntB;
			sIntA  += sIntB;
			sIntA  -= sIntB;
			sIntA  *= sIntB;
			sIntA  /= sIntB;
			sIntA **= sIntB;

			sCharA = 'String';

			sIntA   = prIntA();
			sIntA  += prIntA();
			sIntA  -= prIntA();
			sIntA  *= prIntA();
			sIntA  /= prIntA();
			sIntA **= prIntA();
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}
	
	@Test
	def void testCalculationReturn() {
		val result = parseHelper.parse('''
			DCL-S sChar char(10);
			
			return;
			
			return 'Testing';
			
			return 'test' + 'ing';
			
			return sChar + 'bla';
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testDO() {
		val result = parseHelper.parse('''
			DCL-S i int(5);

			DOW 1 = 1;
			ENDDO;

			DOU 2 = 2;
			ENDDO;

			DOW 3 = 3;
				i = 3;
			ENDDO;

			DOU 4 = 4;
				i = 4;
			ENDDO;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testFOR() {
		val result = parseHelper.parse('''
			dcl-s i int(10);

			for i = 1;
			endfor;

			for i = (i+1) downto (1+1);
			endfor;

			for i = (i+1) to (1+1);
			endfor;

			for i = (i+1) by 99 downto (1+1);
			endfor;

			for i = (i+1) by (234 + i + i) downto (1+1);
			endfor;

			for i = i;
			endfor;

			for i =+ i;
			endfor;

			FOR i = 5 BY 5 TO 5;
				i = 6;
			ENDFOR;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testIF01() {
		val result = parseHelper.parse('''
			DCL-S sBool ind;
			DCL-PR pProc ind;
			END-PR;

			IF 1 = 1;
			ENDIF;

			IF sBool = *ON;
			ENDIF;

			IF pProc();
			ENDIF;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testIF02() {
		val result = parseHelper.parse('''
			DCL-S sBool ind;
			DCL-PR pProc ind;
			END-PR;

			IF 1 = 1;
				sBool = *OFF;
			ENDIF;

			IF sBool = *ON;
				sBool = *OFF;
			ENDIF;

			IF pProc();
				sBool = *OFF;
			ENDIF;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testIF03() {
		val result = parseHelper.parse('''
			DCL-S sBool ind;
			DCL-PR pProc ind;
			END-PR;

			IF 1 = 1;
				sBool = *OFF;
			ELSE;
				sBool = *ON;
			ENDIF;

			IF sBool = *ON;
				sBool = *OFF;
			ELSE;
				sBool = *ON;
			ENDIF;

			IF pProc();
				sBool = *OFF;
			ELSE;
				sBool = *ON;
			ENDIF;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testIF04() {
		val result = parseHelper.parse('''
			DCL-S sBool ind;
			DCL-S sInt int(5);
			DCL-PR pProc ind;
			END-PR;

			IF 1 = 1;
				sInt = 1;
			ELSEIF 2 = 2;
				sInt = 2;
			ELSE;
				sBool = *ON;
			ENDIF;

			IF sBool = *ON;
				sInt = 1;
			ELSEIF 4 = 4;
				sInt = 4;
			ELSEIF 5 = 5;
				sInt = 1;
			ELSE;
				sBool = *ON;
			ENDIF;

			IF pProc();
				sBool = *ON;
			ELSEIF 4 = 4;
				sBool = *OFF;
			ENDIF;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testMONITOR() {
		val result = parseHelper.parse('''
			DCL-S sBool ind;

			MONITOR;
				sBool = *ON;
			ON-ERROR;
				sBool = *OFF;
			ENDMON;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}


	@Test
	def void testSELECT() {
		val result = parseHelper.parse('''
			DCL-S sBool ind;
			DCL-S sInt int(5);

			SELECT;
				WHEN sBool = *ON;
					sInt = 1;
				WHEN sBool = *OFF;
					sInt = 2;
				OTHER;
					sInt = 3;
			ENDSL;

			SELECT;
				WHEN sBool = *ON;
					sInt = 1;
				WHEN sBool = *OFF;
					sInt = 2;
			ENDSL;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testFuncationSUBROUTINE() {
		val result = parseHelper.parse('''
			DCL-S sBool ind;

			BEGSR sr_SubRoutine01;
			ENDSR;

			BEGSR sr_SubRoutine02;
				sBool = *ON;
			ENDSR;
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testFuncationCall01() {
		val result = parseHelper.parse('''
			DCL-PR prChar char(10);
			END-PR;
			
			prChar();
			
			callp prChar();
		''')	
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testFuncationCall02() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind;
			DCL-S sCharA char(10);
			DCL-S sIntA  int(10);

			DCL-C cBoolA *ON;
			DCL-C cCharA '*OFF';
			DCL-C cIntA  999;

			DCL-PR testFunc char(10);
				*N ind;
				*N char(10);
				*N int(10);
				*N ind const;
				*N char(10) const;
				*N int(10) const;
				*N char(100) const;
				*N int(10) const;
			END-PR;

			testFunc(sBoolA : sCharA : sIntA :
			      cBoolA :cCharA :cIntA :
			      'string' : 9999
			      );
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testExpressionOr() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind;
			DCL-S sBoolB ind;
			DCL-S sBoolC ind;
			
			sBoolA = sBoolB or sBoolC;
			sBoolA = sBoolA or sBoolB or sBoolC;
			sBoolA = sBoolA or (sBoolB or sBoolC);
			sBoolA = (sBoolA or sBoolB) or sBoolC;
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testExpressionAnd() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind;
			DCL-S sBoolB ind;
			DCL-S sBoolC ind;
			
			sBoolA = sBoolB and sBoolC;
			sBoolA = sBoolA and sBoolB and sBoolC;
			sBoolA = sBoolA and (sBoolB and sBoolC);
			sBoolA = (sBoolA and sBoolB) and sBoolC;
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}
	
	@Test
	def void testExpressionComparison() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind;

			DCL-S sIntA  INT(11);
			DCL-S sIntB  int(20) inz;
			
			DCL-PR testFunc int(30);
			END-PR;
			
			sBoolA = ( sIntA  = 41 );  // Equals
			sBoolA = ( sIntA <> 42 );  // NOT Equals
			sBoolA = ( sIntA >= 43 );  // Greater than or Equal
			sBoolA = ( sIntA <= 44 );  // Less    than or Equal
			sBoolA = ( sIntA >  45 );  // Greater than
			sBoolA = ( sIntA <  46 );  // Less    than

			sBoolA = ( sIntA  = sIntB);  // Equals
			sBoolA = ( sIntA <> sIntB);  // NOT Equals
			sBoolA = ( sIntA >= sIntB);  // Greater than or Equal
			sBoolA = ( sIntA <= sIntB);  // Less    than or Equal
			sBoolA = ( sIntA >  sIntB);  // Greater than
			sBoolA = ( sIntA <  sIntB);  // Less    than
			
			sBoolA = ( sIntA  = testFunc() );  // Equals
			sBoolA = ( sIntA <> testFunc() );  // NOT Equals
			sBoolA = ( sIntA >= testFunc() );  // Greater than or Equal
			sBoolA = ( sIntA <= testFunc() );  // Less    than or Equal
			sBoolA = ( sIntA >  testFunc() );  // Greater than
			sBoolA = ( sIntA <  testFunc() );  // Less    than
			
			sBoolA = sIntA = sIntA;
			sBoolA = (sIntA = sIntA);
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}	

	@Test
	def void testExpressionBinaryPlusOrMinus() {
		//TODO
	}

	@Test
	def void testExpressionMulOrDiv() {
		//TODO
	}

	@Test
	def void testExpressionExponent() {
		//TODO
	}

	@Test
	def void testExpressionUnaryPlusOrMinus() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind;

			DCL-S sIntA int(10);
			DCL-S sIntB int(10);

			DCL-PR testFunc int(10);
			END-PR;

//ERROR - Type Miss match, can be flagged after parsing
«««			bA = -( sIntA  = 1 );  // Equals
«««			bA = -( sIntA <> 1 );  // NOT Equals
«««			bA = -( sIntA >= 1 );  // Greater than or Equal
«««			bA = -( sIntA <= 1 );  // Less    than or Equal
«««			bA = -( sIntA >  1 );  // Greater than
«««			bA = -( sIntA <  1 );  // Less    than
«««
«««			bA = +( sIntA  = 1 );  // Equals
«««			bA = +( sIntA <> 1 );  // NOT Equals
«««			bA = +( sIntA >= 1 );  // Greater than or Equal
«««			bA = +( sIntA <= 1 );  // Less    than or Equal
«««			bA = +( sIntA >  1 );  // Greater than
«««			bA = +( sIntA <  1 );  // Less    than

			sIntA = -1;
			sIntA = +1; // Should be flagged as Error, after parsing ?

			sIntA = -1 + -2;
			sIntA = +1 + +2; 

			sIntA = -sIntB;
			sIntA = +sIntB; // Should be flagged as Error, after parsing

«««			sIntA = + -iB; //ERROR
«««			sIntA = + +iB; //ERROR

			sIntA = - testFunc();
			sIntA = + testFunc(); // Should be flagged as Error, after parsing
			sIntA = - testFunc( sIntA : sIntB : testFunc() );

			sIntA = 1 + -testFunc();
			sIntA = 1 + +testFunc();
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testExpressionFunctionExp() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind;
			DCL-S sCharA char(10);
			DCL-S sIntA int(10);

		DCL-PR testFuncBool ind;
			*N char(10);
		END-PR;
		
		DCL-PR testFuncChar char(10);
		END-PR;
		
		DCL-PR testFuncInt int(10);
			*N char(10) const;
			*N int(10) const;
			*N int(10) const;
		END-PR;
		
		sBoolA = testFuncBool(sCharA);
		sBoolA = NOT testFuncBool(sCharA);
		
		sCharA = testFuncChar();
		
		sIntA = testFuncInt('String' : 77 : (88 * 99));
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testExpressionPrimary01() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind;
			DCL-S sBoolB ind;
			DCL-S sBoolC ind;
			
«««			bA = bB not bC; //ERROR
«««			bA = bB not;    //ERROR

			sBoolA = not sBoolB;

			sBoolA = sBoolA or not sBoolB and not sBoolC;
			sBoolA = not sBoolA and not (sBoolB and not sBoolC);
			sBoolA = (not sBoolA or not sBoolB) and not sBoolC;
			
			sBoolA = not sBoolB = sBoolC;
			sBoolA = not (sBoolB = sBoolC);

		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testExpressionAtomic() {
		val result = parseHelper.parse('''
			DCL-S sBoolA ind;
			DCL-S sCharA char(10);
			DCL-S sIntA  int(10);
			
			
			sBoolA = *ON;
			sBoolA = *OFF;
			
			sCharA = 'String';
			
			sIntA = 11;
			sIntA = 0;
			sIntA = 01;

		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testExpressionPrecedence() {
		//TODO
	}

	@Test
	def void testCompilerDirective01() {
		val result = parseHelper.parse('''
			/TITLE TitleGoesHere

			/EJECT

			/DEFINE CompDirDefine01

			/UNDEFINE CompDirDefine02

			/EOF
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testCompilerDirective02() {
		val result = parseHelper.parse('''
			/COPY IFSPath

			/INCLUDE QSYSPath
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}

	@Test
	def void testCompilerDirective03() {
		val result = parseHelper.parse('''
			/IF DEFINED(DaDefinedID)
			/ENDIF

			/DEFINE TestNOTDef
			/IF NOT DEFINED(TestNOTDef)
			/EOF
			/ENDIF

			/IF DEFINED(*V7R3M0)
				dcl-s Steve char(10);
			/ELSE
				dcl-s Peter char(10);
			/ENDIF

			/IF DEFINED(*V7R3M0)
				dcl-s Steven char(10);
			/ELSEIF DEFINED(*CRTBNDRPG)
				dcl-s Dave char(10);
			/ELSEIF NOT DEFINED(*CRTRPGMOD)
			/ELSEIF DEFINED(*THREAD_CONCURRENT)
				dcl-s Jacob char(10);
			/ELSEIF DEFINED(*THREAD_SERIALIZE)
			/ELSEIF DEFINED(DaWord)
				dcl-s Pieter char(10);
				Pieter = 'This is Pieter';
			/ENDIF
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}
}

////  i = 1 + NOT + 1; //ERROR -> NOT is reserved word, not allowed to be used as Varible Name
//
////  i = 1 + +-+1; //ERROR - Missing Expression between "-+"
////  i = 1 + +--1; //ERROR - Missing Expression between "--"
//
////  testfuncReturnsINT() = i; // User-defined is NOT allowed on Left side. Aka can not be target of assignment
////  %SpecialFunc(varRef) = i; // Compiler-defined functions (Starting with %) is allowed on Left side of Assignment
//
////  i = 1 - +   testfuncReturnsBOOL(); // ERROR -> Type Miss Match - To be fix later with Type System
////  i = 1 - NOT testfuncReturnsBOOL(); // ERROR -> Type Miss Match - To be fix later with Type System