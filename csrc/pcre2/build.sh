C="$C

pcre2_auto_possess.c
pcre2_compile.c
pcre2_config.c
pcre2_context.c
pcre2_convert.c
pcre2_dfa_match.c
pcre2_error.c
pcre2_extuni.c
pcre2_find_bracket.c
pcre2_jit_compile.c
pcre2_maketables.c
pcre2_match.c
pcre2_match_data.c
pcre2_newline.c
pcre2_ord2utf.c
pcre2_pattern_info.c
pcre2_script_run.c
pcre2_serialize.c
pcre2_string_utils.c
pcre2_study.c
pcre2_substitute.c
pcre2_substring.c
pcre2_tables.c
pcre2_ucd.c
pcre2_valid_utf.c
pcre2_xclass.c
pcre2_chartables.c
pcre2posix.c

-DHAVE_CONFIG_H=1
-DPCRE2_CODE_UNIT_WIDTH=8
-DSUPPORT_PCRE2_8=1
-DSUPPORT_UNICODE=1
-DSUPPORT_JIT=1
-DNEWLINE_DEFAULT=4
-DHAVE_MEMMOVE=1
-DPCRE2_EXP_DECL=__declspec(dllexport)
-DPCRE2_EXP_DEFN=__declspec(dllexport)
"
${X}gcc -c -O3 $C -Wall -I. $files
${X}gcc *.o -shared -o ../../bin/$P/$D $L
rm -f      ../../bin/$P/$A
${X}ar rcs ../../bin/$P/$A *.o
rm *.o
