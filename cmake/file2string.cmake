function(file2string varname input output)
  get_filename_component(output ${output} ABSOLUTE BASE_DIR ${CMAKE_CURRENT_BINARY_DIR})
  message(STATUS "Generating define header file ${output} from file ${input}")
  file(READ ${input} _data_ascii)

  string(TOUPPER ${varname} upper_varname)
  file(WRITE ${output} "const char ${upper_varname}[] = R\"RAWSTRING(${_data_ascii})RAWSTRING\";")
endfunction(file2string)
