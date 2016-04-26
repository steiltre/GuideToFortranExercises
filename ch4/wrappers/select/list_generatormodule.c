/* File: list_generatormodule.c
 * This file is auto-generated with f2py (version:2).
 * f2py is a Fortran to Python Interface Generator (FPIG), Second Edition,
 * written by Pearu Peterson <pearu@cens.ioc.ee>.
 * See http://cens.ioc.ee/projects/f2py2e/
 * Generation date: Tue Apr 26 14:03:22 2016
 * $Revision:$
 * $Date:$
 * Do not edit this file directly unless you know what you are doing!!!
 */
#ifdef __cplusplus
extern "C" {
#endif

/*********************** See f2py2e/cfuncs.py: includes ***********************/
#include <stdarg.h>
#include "Python.h"
#include "fortranobject.h"
#include <math.h>

/**************** See f2py2e/rules.py: mod_rules['modulebody'] ****************/
static PyObject *list_generator_error;
static PyObject *list_generator_module;

/*********************** See f2py2e/cfuncs.py: typedefs ***********************/
/*need_typedefs*/

/****************** See f2py2e/cfuncs.py: typedefs_generated ******************/
/*need_typedefs_generated*/

/********************** See f2py2e/cfuncs.py: cppmacros **********************/
#ifdef DEBUGCFUNCS
#define CFUNCSMESS(mess) fprintf(stderr,"debug-capi:"mess);
#define CFUNCSMESSPY(mess,obj) CFUNCSMESS(mess) \
  PyObject_Print((PyObject *)obj,stderr,Py_PRINT_RAW);\
  fprintf(stderr,"\n");
#else
#define CFUNCSMESS(mess)
#define CFUNCSMESSPY(mess,obj)
#endif

#ifndef max
#define max(a,b) ((a > b) ? (a) : (b))
#endif
#ifndef min
#define min(a,b) ((a < b) ? (a) : (b))
#endif
#ifndef MAX
#define MAX(a,b) ((a > b) ? (a) : (b))
#endif
#ifndef MIN
#define MIN(a,b) ((a < b) ? (a) : (b))
#endif

#define rank(var) var ## _Rank
#define shape(var,dim) var ## _Dims[dim]
#define old_rank(var) (((PyArrayObject *)(capi_ ## var ## _tmp))->nd)
#define old_shape(var,dim) (((PyArrayObject *)(capi_ ## var ## _tmp))->dimensions[dim])
#define fshape(var,dim) shape(var,rank(var)-dim-1)
#define len(var) shape(var,0)
#define flen(var) fshape(var,0)
#define old_size(var) PyArray_SIZE((PyArrayObject *)(capi_ ## var ## _tmp))
/* #define index(i) capi_i ## i */
#define slen(var) capi_ ## var ## _len
#define size(var, ...) f2py_size((PyArrayObject *)(capi_ ## var ## _tmp), ## __VA_ARGS__, -1)

#if defined(PREPEND_FORTRAN)
#if defined(NO_APPEND_FORTRAN)
#if defined(UPPERCASE_FORTRAN)
#define F_FUNC(f,F) _##F
#else
#define F_FUNC(f,F) _##f
#endif
#else
#if defined(UPPERCASE_FORTRAN)
#define F_FUNC(f,F) _##F##_
#else
#define F_FUNC(f,F) _##f##_
#endif
#endif
#else
#if defined(NO_APPEND_FORTRAN)
#if defined(UPPERCASE_FORTRAN)
#define F_FUNC(f,F) F
#else
#define F_FUNC(f,F) f
#endif
#else
#if defined(UPPERCASE_FORTRAN)
#define F_FUNC(f,F) F##_
#else
#define F_FUNC(f,F) f##_
#endif
#endif
#endif
#if defined(UNDERSCORE_G77)
#define F_FUNC_US(f,F) F_FUNC(f##_,F##_)
#else
#define F_FUNC_US(f,F) F_FUNC(f,F)
#endif


/************************ See f2py2e/cfuncs.py: cfuncs ************************/
static int f2py_size(PyArrayObject* var, ...)
{
  npy_int sz = 0;
  npy_int dim;
  npy_int rank;
  va_list argp;
  va_start(argp, var);
  dim = va_arg(argp, npy_int);
  if (dim==-1)
    {
      sz = PyArray_SIZE(var);
    }
  else
    {
      rank = PyArray_NDIM(var);
      if (dim>=1 && dim<=rank)
        sz = PyArray_DIM(var, dim-1);
      else
        fprintf(stderr, "f2py_size: 2nd argument value=%d fails to satisfy 1<=value<=%d. Result will be 0.\n", dim, rank);
    }
  va_end(argp);
  return sz;
}

static int double_from_pyobj(double* v,PyObject *obj,const char *errmess) {
  PyObject* tmp = NULL;
  if (PyFloat_Check(obj)) {
#ifdef __sgi
    *v = PyFloat_AsDouble(obj);
#else
    *v = PyFloat_AS_DOUBLE(obj);
#endif
    return 1;
  }
  tmp = PyNumber_Float(obj);
  if (tmp) {
#ifdef __sgi
    *v = PyFloat_AsDouble(tmp);
#else
    *v = PyFloat_AS_DOUBLE(tmp);
#endif
    Py_DECREF(tmp);
    return 1;
  }
  if (PyComplex_Check(obj))
    tmp = PyObject_GetAttrString(obj,"real");
  else if (PyString_Check(obj) || PyUnicode_Check(obj))
    /*pass*/;
  else if (PySequence_Check(obj))
    tmp = PySequence_GetItem(obj,0);
  if (tmp) {
    PyErr_Clear();
    if (double_from_pyobj(v,tmp,errmess)) {Py_DECREF(tmp); return 1;}
    Py_DECREF(tmp);
  }
  {
    PyObject* err = PyErr_Occurred();
    if (err==NULL) err = list_generator_error;
    PyErr_SetString(err,errmess);
  }
  return 0;
}

static int int_from_pyobj(int* v,PyObject *obj,const char *errmess) {
  PyObject* tmp = NULL;
  if (PyInt_Check(obj)) {
    *v = (int)PyInt_AS_LONG(obj);
    return 1;
  }
  tmp = PyNumber_Int(obj);
  if (tmp) {
    *v = PyInt_AS_LONG(tmp);
    Py_DECREF(tmp);
    return 1;
  }
  if (PyComplex_Check(obj))
    tmp = PyObject_GetAttrString(obj,"real");
  else if (PyString_Check(obj) || PyUnicode_Check(obj))
    /*pass*/;
  else if (PySequence_Check(obj))
    tmp = PySequence_GetItem(obj,0);
  if (tmp) {
    PyErr_Clear();
    if (int_from_pyobj(v,tmp,errmess)) {Py_DECREF(tmp); return 1;}
    Py_DECREF(tmp);
  }
  {
    PyObject* err = PyErr_Occurred();
    if (err==NULL) err = list_generator_error;
    PyErr_SetString(err,errmess);
  }
  return 0;
}

static int float_from_pyobj(float* v,PyObject *obj,const char *errmess) {
  double d=0.0;
  if (double_from_pyobj(&d,obj,errmess)) {
    *v = (float)d;
    return 1;
  }
  return 0;
}


/********************* See f2py2e/cfuncs.py: userincludes *********************/
/*need_userincludes*/

/********************* See f2py2e/capi_rules.py: usercode *********************/


/* See f2py2e/rules.py */
/*eof externroutines*/

/******************** See f2py2e/capi_rules.py: usercode1 ********************/


/******************* See f2py2e/cb_rules.py: buildcallback *******************/
/*need_callbacks*/

/*********************** See f2py2e/rules.py: buildapi ***********************/

/********************************* random_int *********************************/
static char doc_f2py_rout_list_generator_random_module_random_int[] = "\
random_result = random_int(low,high)\n\nWrapper for ``random_int``.\
\n\nParameters\n----------\n"
"low : input int\n"
"high : input int\n"
"\nReturns\n-------\n"
"random_result : int";
/*  */
static PyObject *f2py_rout_list_generator_random_module_random_int(const PyObject *capi_self,
                           PyObject *capi_args,
                           PyObject *capi_keywds,
                           void (*f2py_func)(int*,int*,int*)) {
  PyObject * volatile capi_buildvalue = NULL;
  volatile int f2py_success = 1;
/*decl*/

  int random_result = 0;
  int low = 0;
  PyObject *low_capi = Py_None;
  int high = 0;
  PyObject *high_capi = Py_None;
  static char *capi_kwlist[] = {"low","high",NULL};

/*routdebugenter*/
#ifdef F2PY_REPORT_ATEXIT
f2py_start_clock();
#endif
  if (!PyArg_ParseTupleAndKeywords(capi_args,capi_keywds,\
    "OO:list_generator.random_module.random_int",\
    capi_kwlist,&low_capi,&high_capi))
    return NULL;
/*frompyobj*/
  /* Processing variable random_result */
  /* Processing variable low */
    f2py_success = int_from_pyobj(&low,low_capi,"list_generator.random_module.random_int() 1st argument (low) can't be converted to int");
  if (f2py_success) {
  /* Processing variable high */
    f2py_success = int_from_pyobj(&high,high_capi,"list_generator.random_module.random_int() 2nd argument (high) can't be converted to int");
  if (f2py_success) {
/*end of frompyobj*/
#ifdef F2PY_REPORT_ATEXIT
f2py_start_call_clock();
#endif
/*callfortranroutine*/
        (*f2py_func)(&random_result,&low,&high);
if (PyErr_Occurred())
  f2py_success = 0;
#ifdef F2PY_REPORT_ATEXIT
f2py_stop_call_clock();
#endif
/*end of callfortranroutine*/
    if (f2py_success) {
/*pyobjfrom*/
/*end of pyobjfrom*/
    CFUNCSMESS("Building return value.\n");
    capi_buildvalue = Py_BuildValue("i",random_result);
/*closepyobjfrom*/
/*end of closepyobjfrom*/
    } /*if (f2py_success) after callfortranroutine*/
/*cleanupfrompyobj*/
  } /*if (f2py_success) of high*/
  /* End of cleaning variable high */
  } /*if (f2py_success) of low*/
  /* End of cleaning variable low */
  /* End of cleaning variable random_result */
/*end of cleanupfrompyobj*/
  if (capi_buildvalue == NULL) {
/*routdebugfailure*/
  } else {
/*routdebugleave*/
  }
  CFUNCSMESS("Freeing memory.\n");
/*freemem*/
#ifdef F2PY_REPORT_ATEXIT
f2py_stop_clock();
#endif
  return capi_buildvalue;
}
/***************************** end of random_int *****************************/

/******************************** random_real ********************************/
static char doc_f2py_rout_list_generator_random_module_random_real[] = "\
random_result = random_real(low,high)\n\nWrapper for ``random_real``.\
\n\nParameters\n----------\n"
"low : input float\n"
"high : input float\n"
"\nReturns\n-------\n"
"random_result : float";
/*  */
static PyObject *f2py_rout_list_generator_random_module_random_real(const PyObject *capi_self,
                           PyObject *capi_args,
                           PyObject *capi_keywds,
                           void (*f2py_func)(float*,float*,float*)) {
  PyObject * volatile capi_buildvalue = NULL;
  volatile int f2py_success = 1;
/*decl*/

  float random_result = 0;
  float low = 0;
  PyObject *low_capi = Py_None;
  float high = 0;
  PyObject *high_capi = Py_None;
  static char *capi_kwlist[] = {"low","high",NULL};

/*routdebugenter*/
#ifdef F2PY_REPORT_ATEXIT
f2py_start_clock();
#endif
  if (!PyArg_ParseTupleAndKeywords(capi_args,capi_keywds,\
    "OO:list_generator.random_module.random_real",\
    capi_kwlist,&low_capi,&high_capi))
    return NULL;
/*frompyobj*/
  /* Processing variable random_result */
  /* Processing variable low */
    f2py_success = float_from_pyobj(&low,low_capi,"list_generator.random_module.random_real() 1st argument (low) can't be converted to float");
  if (f2py_success) {
  /* Processing variable high */
    f2py_success = float_from_pyobj(&high,high_capi,"list_generator.random_module.random_real() 2nd argument (high) can't be converted to float");
  if (f2py_success) {
/*end of frompyobj*/
#ifdef F2PY_REPORT_ATEXIT
f2py_start_call_clock();
#endif
/*callfortranroutine*/
        (*f2py_func)(&random_result,&low,&high);
if (PyErr_Occurred())
  f2py_success = 0;
#ifdef F2PY_REPORT_ATEXIT
f2py_stop_call_clock();
#endif
/*end of callfortranroutine*/
    if (f2py_success) {
/*pyobjfrom*/
/*end of pyobjfrom*/
    CFUNCSMESS("Building return value.\n");
    capi_buildvalue = Py_BuildValue("f",random_result);
/*closepyobjfrom*/
/*end of closepyobjfrom*/
    } /*if (f2py_success) after callfortranroutine*/
/*cleanupfrompyobj*/
  } /*if (f2py_success) of high*/
  /* End of cleaning variable high */
  } /*if (f2py_success) of low*/
  /* End of cleaning variable low */
  /* End of cleaning variable random_result */
/*end of cleanupfrompyobj*/
  if (capi_buildvalue == NULL) {
/*routdebugfailure*/
  } else {
/*routdebugleave*/
  }
  CFUNCSMESS("Freeing memory.\n");
/*freemem*/
#ifdef F2PY_REPORT_ATEXIT
f2py_stop_clock();
#endif
  return capi_buildvalue;
}
/***************************** end of random_real *****************************/

/****************************** init_random_seed ******************************/
static char doc_f2py_rout_list_generator_random_module_init_random_seed[] = "\
init_random_seed()\n\nWrapper for ``init_random_seed``.\
\n";
/*  */
static PyObject *f2py_rout_list_generator_random_module_init_random_seed(const PyObject *capi_self,
                           PyObject *capi_args,
                           PyObject *capi_keywds,
                           void (*f2py_func)(void)) {
  PyObject * volatile capi_buildvalue = NULL;
  volatile int f2py_success = 1;
/*decl*/

  static char *capi_kwlist[] = {NULL};

/*routdebugenter*/
#ifdef F2PY_REPORT_ATEXIT
f2py_start_clock();
#endif
  if (!PyArg_ParseTupleAndKeywords(capi_args,capi_keywds,\
    ":list_generator.random_module.init_random_seed",\
    capi_kwlist))
    return NULL;
/*frompyobj*/
/*end of frompyobj*/
#ifdef F2PY_REPORT_ATEXIT
f2py_start_call_clock();
#endif
/*callfortranroutine*/
        (*f2py_func)();
if (PyErr_Occurred())
  f2py_success = 0;
#ifdef F2PY_REPORT_ATEXIT
f2py_stop_call_clock();
#endif
/*end of callfortranroutine*/
    if (f2py_success) {
/*pyobjfrom*/
/*end of pyobjfrom*/
    CFUNCSMESS("Building return value.\n");
    capi_buildvalue = Py_BuildValue("");
/*closepyobjfrom*/
/*end of closepyobjfrom*/
    } /*if (f2py_success) after callfortranroutine*/
/*cleanupfrompyobj*/
/*end of cleanupfrompyobj*/
  if (capi_buildvalue == NULL) {
/*routdebugfailure*/
  } else {
/*routdebugleave*/
  }
  CFUNCSMESS("Freeing memory.\n");
/*freemem*/
#ifdef F2PY_REPORT_ATEXIT
f2py_stop_clock();
#endif
  return capi_buildvalue;
}
/************************** end of init_random_seed **************************/

/******************************** random_list ********************************/
static char doc_f2py_rout_list_generator_list_generator_module_random_list[] = "\
random_list(list)\n\nWrapper for ``random_list``.\
\n\nParameters\n----------\n"
"list : input rank-1 array('f') with bounds (f2py_list_d0)";
/* #declfortranroutine# */
static PyObject *f2py_rout_list_generator_list_generator_module_random_list(const PyObject *capi_self,
                           PyObject *capi_args,
                           PyObject *capi_keywds,
                           void (*f2py_func)(float*,int*)) {
  PyObject * volatile capi_buildvalue = NULL;
  volatile int f2py_success = 1;
/*decl*/

  float *list = NULL;
  npy_intp list_Dims[1] = {-1};
  const int list_Rank = 1;
  PyArrayObject *capi_list_tmp = NULL;
  int capi_list_intent = 0;
  PyObject *list_capi = Py_None;
  int f2py_list_d0 = 0;
  static char *capi_kwlist[] = {"list",NULL};

/*routdebugenter*/
#ifdef F2PY_REPORT_ATEXIT
f2py_start_clock();
#endif
  if (!PyArg_ParseTupleAndKeywords(capi_args,capi_keywds,\
    "O:list_generator.list_generator_module.random_list",\
    capi_kwlist,&list_capi))
    return NULL;
/*frompyobj*/
  /* Processing variable list */
  ;
  capi_list_intent |= F2PY_INTENT_IN;
  capi_list_tmp = array_from_pyobj(NPY_FLOAT,list_Dims,list_Rank,capi_list_intent,list_capi);
  if (capi_list_tmp == NULL) {
    if (!PyErr_Occurred())
      PyErr_SetString(list_generator_error,"failed in converting 1st argument `list' of list_generator.list_generator_module.random_list to C/Fortran array" );
  } else {
    list = (float *)(capi_list_tmp->data);

  /* Processing variable f2py_list_d0 */
  f2py_list_d0 = shape(list, 0);
/*end of frompyobj*/
#ifdef F2PY_REPORT_ATEXIT
f2py_start_call_clock();
#endif
/*callfortranroutine*/
  (*f2py_func)(list,&f2py_list_d0);
if (PyErr_Occurred())
  f2py_success = 0;
#ifdef F2PY_REPORT_ATEXIT
f2py_stop_call_clock();
#endif
/*end of callfortranroutine*/
    if (f2py_success) {
/*pyobjfrom*/
/*end of pyobjfrom*/
    CFUNCSMESS("Building return value.\n");
    capi_buildvalue = Py_BuildValue("");
/*closepyobjfrom*/
/*end of closepyobjfrom*/
    } /*if (f2py_success) after callfortranroutine*/
/*cleanupfrompyobj*/
  /* End of cleaning variable f2py_list_d0 */
  if((PyObject *)capi_list_tmp!=list_capi) {
    Py_XDECREF(capi_list_tmp); }
  }  /*if (capi_list_tmp == NULL) ... else of list*/
  /* End of cleaning variable list */
/*end of cleanupfrompyobj*/
  if (capi_buildvalue == NULL) {
/*routdebugfailure*/
  } else {
/*routdebugleave*/
  }
  CFUNCSMESS("Freeing memory.\n");
/*freemem*/
#ifdef F2PY_REPORT_ATEXIT
f2py_stop_clock();
#endif
  return capi_buildvalue;
}
/***************************** end of random_list *****************************/
/*eof body*/

/******************* See f2py2e/f90mod_rules.py: buildhooks *******************/

static FortranDataDef f2py_random_module_def[] = {
  {"random_int",-1,{{-1}},0,NULL,(void *)f2py_rout_list_generator_random_module_random_int,doc_f2py_rout_list_generator_random_module_random_int},
  {"random_real",-1,{{-1}},0,NULL,(void *)f2py_rout_list_generator_random_module_random_real,doc_f2py_rout_list_generator_random_module_random_real},
  {"init_random_seed",-1,{{-1}},0,NULL,(void *)f2py_rout_list_generator_random_module_init_random_seed,doc_f2py_rout_list_generator_random_module_init_random_seed},
  {NULL}
};

static void f2py_setup_random_module(char *random_int,char *random_real,char *init_random_seed) {
  int i_f2py=0;
  f2py_random_module_def[i_f2py++].data = random_int;
  f2py_random_module_def[i_f2py++].data = random_real;
  f2py_random_module_def[i_f2py++].data = init_random_seed;
}
extern void F_FUNC_US(f2pyinitrandom_module,F2PYINITRANDOM_MODULE)(void (*)(char *,char *,char *));
static void f2py_init_random_module(void) {
  F_FUNC_US(f2pyinitrandom_module,F2PYINITRANDOM_MODULE)(f2py_setup_random_module);
}


static FortranDataDef f2py_list_generator_module_def[] = {
  {"random_list",-1,{{-1}},0,NULL,(void *)f2py_rout_list_generator_list_generator_module_random_list,doc_f2py_rout_list_generator_list_generator_module_random_list},
  {NULL}
};

static void f2py_setup_list_generator_module(char *random_list) {
  int i_f2py=0;
  f2py_list_generator_module_def[i_f2py++].data = random_list;
}
extern void F_FUNC_US(f2pyinitlist_generator_module,F2PYINITLIST_GENERATOR_MODULE)(void (*)(char *));
static void f2py_init_list_generator_module(void) {
  F_FUNC_US(f2pyinitlist_generator_module,F2PYINITLIST_GENERATOR_MODULE)(f2py_setup_list_generator_module);
}

/*need_f90modhooks*/

/************** See f2py2e/rules.py: module_rules['modulebody'] **************/

/******************* See f2py2e/common_rules.py: buildhooks *******************/

/*need_commonhooks*/

/**************************** See f2py2e/rules.py ****************************/

static FortranDataDef f2py_routine_defs[] = {

/*eof routine_defs*/
  {NULL}
};

static PyMethodDef f2py_module_methods[] = {

  {NULL,NULL}
};

#if PY_VERSION_HEX >= 0x03000000
static struct PyModuleDef moduledef = {
  PyModuleDef_HEAD_INIT,
  "list_generator",
  NULL,
  -1,
  f2py_module_methods,
  NULL,
  NULL,
  NULL,
  NULL
};
#endif

#if PY_VERSION_HEX >= 0x03000000
#define RETVAL m
PyMODINIT_FUNC PyInit_list_generator(void) {
#else
#define RETVAL
PyMODINIT_FUNC initlist_generator(void) {
#endif
  int i;
  PyObject *m,*d, *s;
#if PY_VERSION_HEX >= 0x03000000
  m = list_generator_module = PyModule_Create(&moduledef);
#else
  m = list_generator_module = Py_InitModule("list_generator", f2py_module_methods);
#endif
  Py_TYPE(&PyFortran_Type) = &PyType_Type;
  import_array();
  if (PyErr_Occurred())
    {PyErr_SetString(PyExc_ImportError, "can't initialize module list_generator (failed to import numpy)"); return RETVAL;}
  d = PyModule_GetDict(m);
  s = PyString_FromString("$Revision: $");
  PyDict_SetItemString(d, "__version__", s);
#if PY_VERSION_HEX >= 0x03000000
  s = PyUnicode_FromString(
#else
  s = PyString_FromString(
#endif
    "This module 'list_generator' is auto-generated with f2py (version:2).\nFunctions:\n"
"Fortran 90/95 modules:\n""  random_module --- random_int(),random_real(),init_random_seed()""  list_generator_module --- random_list()"".");
  PyDict_SetItemString(d, "__doc__", s);
  list_generator_error = PyErr_NewException ("list_generator.error", NULL, NULL);
  Py_DECREF(s);
  for(i=0;f2py_routine_defs[i].name!=NULL;i++)
    PyDict_SetItemString(d, f2py_routine_defs[i].name,PyFortranObject_NewAsAttr(&f2py_routine_defs[i]));




/*eof initf2pywraphooks*/
  PyDict_SetItemString(d, "list_generator_module", PyFortranObject_New(f2py_list_generator_module_def,f2py_init_list_generator_module));
  PyDict_SetItemString(d, "random_module", PyFortranObject_New(f2py_random_module_def,f2py_init_random_module));
/*eof initf90modhooks*/

/*eof initcommonhooks*/


#ifdef F2PY_REPORT_ATEXIT
  if (! PyErr_Occurred())
    on_exit(f2py_report_on_exit,(void*)"list_generator");
#endif

  return RETVAL;
}
#ifdef __cplusplus
}
#endif
