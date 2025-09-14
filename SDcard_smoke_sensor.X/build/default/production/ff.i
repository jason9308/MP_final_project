# 1 "ff.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "ff.c" 2
# 19 "ff.c"
# 1 "./ff.h" 1
# 26 "./ff.h"
# 1 "./integer.h" 1
# 21 "./integer.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\stdint.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\stdint.h" 2 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned __int24 uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;




typedef __int24 int24_t;




typedef long int32_t;





typedef long long int64_t;
# 194 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;




typedef __uint24 uint24_t;




typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v2.50\\pic\\include\\c99\\stdint.h" 2 3
# 21 "./integer.h" 2



typedef uint8_t BYTE;


typedef int16_t SHORT;
typedef uint16_t WORD;
typedef uint16_t WCHAR;


typedef int16_t INT;
typedef uint16_t UINT;


typedef int32_t LONG;
typedef uint32_t DWORD;
# 26 "./ff.h" 2

# 1 "./ffconf.h" 1
# 27 "./ff.h" 2
# 67 "./ff.h"
typedef char TCHAR;
# 78 "./ff.h"
typedef struct {
 BYTE fs_type;
 BYTE drv;
 BYTE csize;
 BYTE n_fats;
 BYTE wflag;
 BYTE fsi_flag;
 WORD id;
 WORD n_rootdir;







 DWORD last_clust;
 DWORD free_clust;




 DWORD n_fatent;
 DWORD fsize;
 DWORD volbase;
 DWORD fatbase;
 DWORD dirbase;
 DWORD database;
 DWORD winsect;
 BYTE win[512];
} FATFS;





typedef struct {
 FATFS* fs;
 WORD id;
 BYTE flag;
 BYTE err;
 DWORD fptr;
 DWORD fsize;
 DWORD sclust;
 DWORD clust;
 DWORD dsect;

 DWORD dir_sect;
 BYTE* dir_ptr;
# 137 "./ff.h"
} FIL;





typedef struct {
 FATFS* fs;
 WORD id;
 WORD index;
 DWORD sclust;
 DWORD clust;
 DWORD sect;
 BYTE* dir;
 BYTE* fn;
# 162 "./ff.h"
} DIR;





typedef struct {
 DWORD fsize;
 WORD fdate;
 WORD ftime;
 BYTE fattrib;
 TCHAR fname[13];




} FILINFO;





typedef enum {
 FR_OK = 0,
 FR_DISK_ERR,
 FR_INT_ERR,
 FR_NOT_READY,
 FR_NO_FILE,
 FR_NO_PATH,
 FR_INVALID_NAME,
 FR_DENIED,
 FR_EXIST,
 FR_INVALID_OBJECT,
 FR_WRITE_PROTECTED,
 FR_INVALID_DRIVE,
 FR_NOT_ENABLED,
 FR_NO_FILESYSTEM,
 FR_MKFS_ABORTED,
 FR_TIMEOUT,
 FR_LOCKED,
 FR_NOT_ENOUGH_CORE,
 FR_TOO_MANY_OPEN_FILES,
 FR_INVALID_PARAMETER
} FRESULT;






FRESULT f_open (FIL* fp, const TCHAR* path, BYTE mode);
FRESULT f_close (FIL* fp);
FRESULT f_read (FIL* fp, void* buff, UINT btr, UINT* br);
FRESULT f_write (FIL* fp, const void* buff, UINT btw, UINT* bw);
FRESULT f_forward (FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);
FRESULT f_lseek (FIL* fp, DWORD ofs);
FRESULT f_truncate (FIL* fp);
FRESULT f_sync (FIL* fp);
FRESULT f_opendir (DIR* dp, const TCHAR* path);
FRESULT f_closedir (DIR* dp);
FRESULT f_readdir (DIR* dp, FILINFO* fno);
FRESULT f_findfirst (DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);
FRESULT f_findnext (DIR* dp, FILINFO* fno);
FRESULT f_mkdir (const TCHAR* path);
FRESULT f_unlink (const TCHAR* path);
FRESULT f_rename (const TCHAR* path_old, const TCHAR* path_new);
FRESULT f_stat (const TCHAR* path, FILINFO* fno);
FRESULT f_chmod (const TCHAR* path, BYTE attr, BYTE mask);
FRESULT f_utime (const TCHAR* path, const FILINFO* fno);
FRESULT f_chdir (const TCHAR* path);
FRESULT f_chdrive (const TCHAR* path);
FRESULT f_getcwd (TCHAR* buff, UINT len);
FRESULT f_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);
FRESULT f_getlabel (const TCHAR* path, TCHAR* label, DWORD* vsn);
FRESULT f_setlabel (const TCHAR* label);
FRESULT f_mount (FATFS* fs, const TCHAR* path, BYTE opt);
FRESULT f_mkfs (const TCHAR* path, BYTE sfd, UINT au);
FRESULT f_fdisk (BYTE pdrv, const DWORD szt[], void* work);
int f_putc (TCHAR c, FIL* fp);
int f_puts (const TCHAR* str, FIL* cp);
int f_printf (FIL* fp, const TCHAR* str, ...);
TCHAR* f_gets (TCHAR* buff, int len, FIL* fp);
# 19 "ff.c" 2

# 1 "./diskio.h" 1
# 27 "./diskio.h"
typedef BYTE DSTATUS;


typedef enum {
 RES_OK = 0,
 RES_ERROR,
 RES_WRPRT,
 RES_NOTRDY,
 RES_PARERR
} DRESULT;






DSTATUS disk_initialize (BYTE pdrv);
DSTATUS disk_status (BYTE pdrv);
DRESULT disk_read (BYTE pdrv, BYTE* buff, DWORD sector, UINT count);
DRESULT disk_write (BYTE pdrv, const BYTE* buff, DWORD sector, UINT count);
DRESULT disk_ioctl (BYTE pdrv, BYTE cmd, void* buff);
# 20 "ff.c" 2
# 448 "ff.c"
static FATFS *FatFs[1];
static WORD Fsid;
# 506 "ff.c"
static
void mem_cpy (void* dst, const void* src, UINT cnt) {
 BYTE *d = (BYTE*)dst;
 const BYTE *s = (const BYTE*)src;


 while (cnt >= sizeof (int)) {
  *(int*)d = *(int*)s;
  d += sizeof (int); s += sizeof (int);
  cnt -= sizeof (int);
 }

 while (cnt--)
  *d++ = *s++;
}


static
void mem_set (void* dst, int val, UINT cnt) {
 BYTE *d = (BYTE*)dst;

 while (cnt--)
  *d++ = (BYTE)val;
}


static
int mem_cmp (const void* dst, const void* src, UINT cnt) {
 const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
 int r = 0;

 while (cnt-- && (r = *d++ - *s++) == 0) ;
 return r;
}


static
int chk_chr (const char* str, int chr) {
 while (*str && *str != chr) str++;
 return *str;
}
# 699 "ff.c"
static
FRESULT sync_window (
 FATFS* fs
)
{
 DWORD wsect;
 UINT nf;
 FRESULT res = FR_OK;


 if (fs->wflag) {
  wsect = fs->winsect;
  if (disk_write(fs->drv, fs->win, wsect, 1) != RES_OK) {
   res = FR_DISK_ERR;
  } else {
   fs->wflag = 0;
   if (wsect - fs->fatbase < fs->fsize) {
    for (nf = fs->n_fats; nf >= 2; nf--) {
     wsect += fs->fsize;
     disk_write(fs->drv, fs->win, wsect, 1);
    }
   }
  }
 }
 return res;
}



static
FRESULT move_window (
 FATFS* fs,
 DWORD sector
)
{
 FRESULT res = FR_OK;


 if (sector != fs->winsect) {

  res = sync_window(fs);

  if (res == FR_OK) {
   if (disk_read(fs->drv, fs->win, sector, 1) != RES_OK) {
    sector = 0xFFFFFFFF;
    res = FR_DISK_ERR;
   }
   fs->winsect = sector;
  }
 }
 return res;
}
# 759 "ff.c"
static
FRESULT sync_fs (
 FATFS* fs
)
{
 FRESULT res;


 res = sync_window(fs);
 if (res == FR_OK) {

  if (fs->fs_type == 3 && fs->fsi_flag == 1) {

   mem_set(fs->win, 0, ((UINT)512));
   *(WORD*)(BYTE*)(fs->win + 510)=(WORD)(0xAA55);
   *(DWORD*)(BYTE*)(fs->win + 0)=(DWORD)(0x41615252);
   *(DWORD*)(BYTE*)(fs->win + 484)=(DWORD)(0x61417272);
   *(DWORD*)(BYTE*)(fs->win + 488)=(DWORD)(fs->free_clust);
   *(DWORD*)(BYTE*)(fs->win + 492)=(DWORD)(fs->last_clust);

   fs->winsect = fs->volbase + 1;
   disk_write(fs->drv, fs->win, fs->winsect, 1);
   fs->fsi_flag = 0;
  }

  if (disk_ioctl(fs->drv, 0, 0) != RES_OK)
   res = FR_DISK_ERR;
 }

 return res;
}
# 800 "ff.c"
DWORD clust2sect (
 FATFS* fs,
 DWORD clst
)
{
 clst -= 2;
 if (clst >= fs->n_fatent - 2) return 0;
 return clst * fs->csize + fs->database;
}
# 818 "ff.c"
DWORD get_fat (
 FATFS* fs,
 DWORD clst
)
{
 UINT wc, bc;
 BYTE *p;
 DWORD val;


 if (clst < 2 || clst >= fs->n_fatent) {
  val = 1;

 } else {
  val = 0xFFFFFFFF;

  switch (fs->fs_type) {
  case 1 :
   bc = (UINT)clst; bc += bc / 2;
   if (move_window(fs, fs->fatbase + (bc / ((UINT)512))) != FR_OK) break;
   wc = fs->win[bc++ % ((UINT)512)];
   if (move_window(fs, fs->fatbase + (bc / ((UINT)512))) != FR_OK) break;
   wc |= fs->win[bc % ((UINT)512)] << 8;
   val = clst & 1 ? wc >> 4 : (wc & 0xFFF);
   break;

  case 2 :
   if (move_window(fs, fs->fatbase + (clst / (((UINT)512) / 2))) != FR_OK) break;
   p = &fs->win[clst * 2 % ((UINT)512)];
   val = (WORD)(*(WORD*)(BYTE*)(p));
   break;

  case 3 :
   if (move_window(fs, fs->fatbase + (clst / (((UINT)512) / 4))) != FR_OK) break;
   p = &fs->win[clst * 4 % ((UINT)512)];
   val = (DWORD)(*(DWORD*)(BYTE*)(p)) & 0x0FFFFFFF;
   break;

  default:
   val = 1;
  }
 }

 return val;
}
# 873 "ff.c"
FRESULT put_fat (
 FATFS* fs,
 DWORD clst,
 DWORD val
)
{
 UINT bc;
 BYTE *p;
 FRESULT res;


 if (clst < 2 || clst >= fs->n_fatent) {
  res = FR_INT_ERR;

 } else {
  switch (fs->fs_type) {
  case 1 :
   bc = (UINT)clst; bc += bc / 2;
   res = move_window(fs, fs->fatbase + (bc / ((UINT)512)));
   if (res != FR_OK) break;
   p = &fs->win[bc++ % ((UINT)512)];
   *p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;
   fs->wflag = 1;
   res = move_window(fs, fs->fatbase + (bc / ((UINT)512)));
   if (res != FR_OK) break;
   p = &fs->win[bc % ((UINT)512)];
   *p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));
   fs->wflag = 1;
   break;

  case 2 :
   res = move_window(fs, fs->fatbase + (clst / (((UINT)512) / 2)));
   if (res != FR_OK) break;
   p = &fs->win[clst * 2 % ((UINT)512)];
   *(WORD*)(BYTE*)(p)=(WORD)((WORD)val);
   fs->wflag = 1;
   break;

  case 3 :
   res = move_window(fs, fs->fatbase + (clst / (((UINT)512) / 4)));
   if (res != FR_OK) break;
   p = &fs->win[clst * 4 % ((UINT)512)];
   val |= (DWORD)(*(DWORD*)(BYTE*)(p)) & 0xF0000000;
   *(DWORD*)(BYTE*)(p)=(DWORD)(val);
   fs->wflag = 1;
   break;

  default :
   res = FR_INT_ERR;
  }
 }

 return res;
}
# 936 "ff.c"
static
FRESULT remove_chain (
 FATFS* fs,
 DWORD clst
)
{
 FRESULT res;
 DWORD nxt;




 if (clst < 2 || clst >= fs->n_fatent) {
  res = FR_INT_ERR;

 } else {
  res = FR_OK;
  while (clst < fs->n_fatent) {
   nxt = get_fat(fs, clst);
   if (nxt == 0) break;
   if (nxt == 1) { res = FR_INT_ERR; break; }
   if (nxt == 0xFFFFFFFF) { res = FR_DISK_ERR; break; }
   res = put_fat(fs, clst, 0);
   if (res != FR_OK) break;
   if (fs->free_clust != 0xFFFFFFFF) {
    fs->free_clust++;
    fs->fsi_flag |= 1;
   }
# 974 "ff.c"
   clst = nxt;
  }
 }

 return res;
}
# 989 "ff.c"
static
DWORD create_chain (
 FATFS* fs,
 DWORD clst
)
{
 DWORD cs, ncl, scl;
 FRESULT res;


 if (clst == 0) {
  scl = fs->last_clust;
  if (!scl || scl >= fs->n_fatent) scl = 1;
 }
 else {
  cs = get_fat(fs, clst);
  if (cs < 2) return 1;
  if (cs == 0xFFFFFFFF) return cs;
  if (cs < fs->n_fatent) return cs;
  scl = clst;
 }

 ncl = scl;
 for (;;) {
  ncl++;
  if (ncl >= fs->n_fatent) {
   ncl = 2;
   if (ncl > scl) return 0;
  }
  cs = get_fat(fs, ncl);
  if (cs == 0) break;
  if (cs == 0xFFFFFFFF || cs == 1)
   return cs;
  if (ncl == scl) return 0;
 }

 res = put_fat(fs, ncl, 0x0FFFFFFF);
 if (res == FR_OK && clst != 0) {
  res = put_fat(fs, clst, ncl);
 }
 if (res == FR_OK) {
  fs->last_clust = ncl;
  if (fs->free_clust != 0xFFFFFFFF) {
   fs->free_clust--;
   fs->fsi_flag |= 1;
  }
 } else {
  ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;
 }

 return ncl;
}
# 1079 "ff.c"
static
FRESULT dir_sdi (
 DIR* dp,
 UINT idx
)
{
 DWORD clst, sect;
 UINT ic;


 dp->index = (WORD)idx;
 clst = dp->sclust;
 if (clst == 1 || clst >= dp->fs->n_fatent)
  return FR_INT_ERR;
 if (!clst && dp->fs->fs_type == 3)
  clst = dp->fs->dirbase;

 if (clst == 0) {
  if (idx >= dp->fs->n_rootdir)
   return FR_INT_ERR;
  sect = dp->fs->dirbase;
 }
 else {
  ic = ((UINT)512) / 32 * dp->fs->csize;
  while (idx >= ic) {
   clst = get_fat(dp->fs, clst);
   if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
   if (clst < 2 || clst >= dp->fs->n_fatent)
    return FR_INT_ERR;
   idx -= ic;
  }
  sect = clust2sect(dp->fs, clst);
 }
 dp->clust = clst;
 if (!sect) return FR_INT_ERR;
 dp->sect = sect + idx / (((UINT)512) / 32);
 dp->dir = dp->fs->win + (idx % (((UINT)512) / 32)) * 32;

 return FR_OK;
}
# 1127 "ff.c"
static
FRESULT dir_next (
 DIR* dp,
 int stretch
)
{
 DWORD clst;
 UINT i;

 UINT c;



 i = dp->index + 1;
 if (!(i & 0xFFFF) || !dp->sect)
  return FR_NO_FILE;

 if (!(i % (((UINT)512) / 32))) {
  dp->sect++;

  if (!dp->clust) {
   if (i >= dp->fs->n_rootdir)
    return FR_NO_FILE;
  }
  else {
   if (((i / (((UINT)512) / 32)) & (dp->fs->csize - 1)) == 0) {
    clst = get_fat(dp->fs, dp->clust);
    if (clst <= 1) return FR_INT_ERR;
    if (clst == 0xFFFFFFFF) return FR_DISK_ERR;
    if (clst >= dp->fs->n_fatent) {

     if (!stretch) return FR_NO_FILE;
     clst = create_chain(dp->fs, dp->clust);
     if (clst == 0) return FR_DENIED;
     if (clst == 1) return FR_INT_ERR;
     if (clst == 0xFFFFFFFF) return FR_DISK_ERR;

     if (sync_window(dp->fs)) return FR_DISK_ERR;
     mem_set(dp->fs->win, 0, ((UINT)512));
     dp->fs->winsect = clust2sect(dp->fs, clst);
     for (c = 0; c < dp->fs->csize; c++) {
      dp->fs->wflag = 1;
      if (sync_window(dp->fs)) return FR_DISK_ERR;
      dp->fs->winsect++;
     }
     dp->fs->winsect -= c;




    }
    dp->clust = clst;
    dp->sect = clust2sect(dp->fs, clst);
   }
  }
 }

 dp->index = (WORD)i;
 dp->dir = dp->fs->win + (i % (((UINT)512) / 32)) * 32;

 return FR_OK;
}
# 1198 "ff.c"
static
FRESULT dir_alloc (
 DIR* dp,
 UINT nent
)
{
 FRESULT res;
 UINT n;


 res = dir_sdi(dp, 0);
 if (res == FR_OK) {
  n = 0;
  do {
   res = move_window(dp->fs, dp->sect);
   if (res != FR_OK) break;
   if (dp->dir[0] == 0xE5 || dp->dir[0] == 0) {
    if (++n == nent) break;
   } else {
    n = 0;
   }
   res = dir_next(dp, 1);
  } while (res == FR_OK);
 }
 if (res == FR_NO_FILE) res = FR_DENIED;
 return res;
}
# 1234 "ff.c"
static
DWORD ld_clust (
 FATFS* fs,
 const BYTE* dir
)
{
 DWORD cl;

 cl = (WORD)(*(WORD*)(BYTE*)(dir + 26));
 if (fs->fs_type == 3)
  cl |= (DWORD)(WORD)(*(WORD*)(BYTE*)(dir + 20)) << 16;

 return cl;
}



static
void st_clust (
 BYTE* dir,
 DWORD cl
)
{
 *(WORD*)(BYTE*)(dir + 26)=(WORD)(cl);
 *(WORD*)(BYTE*)(dir + 20)=(WORD)(cl >> 16);
}
# 1457 "ff.c"
static
FRESULT dir_find (
 DIR* dp
)
{
 FRESULT res;
 BYTE c, *dir;




 res = dir_sdi(dp, 0);
 if (res != FR_OK) return res;




 do {
  res = move_window(dp->fs, dp->sect);
  if (res != FR_OK) break;
  dir = dp->dir;
  c = dir[0];
  if (c == 0) { res = FR_NO_FILE; break; }
# 1502 "ff.c"
  if (!(dir[11] & 0x08) && !mem_cmp(dir, dp->fn, 11))
   break;

  res = dir_next(dp, 0);
 } while (res == FR_OK);

 return res;
}
# 1577 "ff.c"
static
FRESULT dir_register (
 DIR* dp
)
{
 FRESULT res;
# 1629 "ff.c"
 res = dir_alloc(dp, 1);


 if (res == FR_OK) {
  res = move_window(dp->fs, dp->sect);
  if (res == FR_OK) {
   mem_set(dp->dir, 0, 32);
   mem_cpy(dp->dir, dp->fn, 11);



   dp->fs->wflag = 1;
  }
 }

 return res;
}
# 1842 "ff.c"
static
FRESULT create_name (
 DIR* dp,
 const TCHAR** path
)
{
# 1969 "ff.c"
 BYTE b, c, d, *sfn;
 UINT ni, si, i;
 const char *p;


 for (p = *path; *p == '/' || *p == '\\'; p++) ;
 sfn = dp->fn;
 mem_set(sfn, ' ', 11);
 si = i = b = 0; ni = 8;
# 1991 "ff.c"
 for (;;) {
  c = (BYTE)p[si++];
  if (c <= ' ' || c == '/' || c == '\\') break;
  if (c == '.' || i >= ni) {
   if (ni != 8 || c != '.') return FR_INVALID_NAME;
   i = 8; ni = 11;
   b <<= 2; continue;
  }
  if (c >= 0x80) {
   b |= 3;







  }
  if ((((BYTE)(c) >= 0x81 && (BYTE)(c) <= 0x9F) || ((BYTE)(c) >= 0xE0 && (BYTE)(c) <= 0xFC))) {
   d = (BYTE)p[si++];
   if (!(((BYTE)(d) >= 0x40 && (BYTE)(d) <= 0x7E) || ((BYTE)(d) >= 0x80 && (BYTE)(d) <= 0xFC)) || i >= ni - 1)
    return FR_INVALID_NAME;
   sfn[i++] = c;
   sfn[i++] = d;
  } else {
   if (chk_chr("\"*+,:;<=>\?[]|\x7F", c))
    return FR_INVALID_NAME;
   if ((((c)>='A')&&((c)<='Z'))) {
    b |= 2;
   } else {
    if ((((c)>='a')&&((c)<='z'))) {
     b |= 1; c -= 0x20;
    }
   }
   sfn[i++] = c;
  }
 }
 *path = &p[si];
 c = (c <= ' ') ? 0x04 : 0;

 if (!i) return FR_INVALID_NAME;
 if (sfn[0] == 0xE5) sfn[0] = 0x05;

 if (ni == 8) b <<= 2;
 if ((b & 0x03) == 0x01) c |= 0x10;
 if ((b & 0x0C) == 0x04) c |= 0x08;

 sfn[11] = c;

 return FR_OK;

}
# 2051 "ff.c"
static
FRESULT follow_path (
 DIR* dp,
 const TCHAR* path
)
{
 FRESULT res;
 BYTE *dir, ns;
# 2068 "ff.c"
 if (*path == '/' || *path == '\\')
  path++;
 dp->sclust = 0;


 if ((UINT)*path < ' ') {
  res = dir_sdi(dp, 0);
  dp->dir = 0;
 } else {
  for (;;) {
   res = create_name(dp, &path);
   if (res != FR_OK) break;
   res = dir_find(dp);
   ns = dp->fn[11];
   if (res != FR_OK) {
    if (res == FR_NO_FILE) {
     if (0 && (ns & 0x20)) {
      dp->sclust = 0; dp->dir = 0;
      if (!(ns & 0x04)) continue;
      res = FR_OK;
     } else {
      if (!(ns & 0x04)) res = FR_NO_PATH;
     }
    }
    break;
   }
   if (ns & 0x04) break;
   dir = dp->dir;
   if (!(dir[11] & 0x10)) {
    res = FR_NO_PATH; break;
   }
   dp->sclust = ld_clust(dp->fs, dir);
  }
 }

 return res;
}
# 2113 "ff.c"
static
int get_ldnumber (
 const TCHAR** path
)
{
 const TCHAR *tp, *tt;
 UINT i;
 int vol = -1;
# 2129 "ff.c"
 if (*path) {
  for (tt = *path; (UINT)*tt >= (0 ? ' ' : '!') && *tt != ':'; tt++) ;
  if (*tt == ':') {
   tp = *path;
   i = *tp++ - '0';
   if (i < 10 && tp == tt) {
    if (i < 1) {
     vol = (int)i;
     *path = ++tt;
    }
   }
# 2156 "ff.c"
   return vol;
  }



  vol = 0;

 }
 return vol;
}
# 2174 "ff.c"
static
BYTE check_fs (
 FATFS* fs,
 DWORD sect
)
{
 fs->wflag = 0; fs->winsect = 0xFFFFFFFF;
 if (move_window(fs, sect) != FR_OK)
  return 3;

 if ((WORD)(*(WORD*)(BYTE*)(&fs->win[510])) != 0xAA55)
  return 2;

 if (((DWORD)(*(DWORD*)(BYTE*)(&fs->win[54])) & 0xFFFFFF) == 0x544146)
  return 0;
 if (((DWORD)(*(DWORD*)(BYTE*)(&fs->win[82])) & 0xFFFFFF) == 0x544146)
  return 0;

 return 1;
}
# 2202 "ff.c"
static
FRESULT find_volume (
 FATFS** rfs,
 const TCHAR** path,
 BYTE wmode
)
{
 BYTE fmt, *pt;
 int vol;
 DSTATUS stat;
 DWORD bsect, fasize, tsect, sysect, nclst, szbfat, br[4];
 WORD nrsv;
 FATFS *fs;
 UINT i;



 *rfs = 0;
 vol = get_ldnumber(path);
 if (vol < 0) return FR_INVALID_DRIVE;


 fs = FatFs[vol];
 if (!fs) return FR_NOT_ENABLED;

             ;
 *rfs = fs;

 if (fs->fs_type) {
  stat = disk_status(fs->drv);
  if (!(stat & 0x01)) {
   if (!0 && wmode && (stat & 0x04))
    return FR_WRITE_PROTECTED;
   return FR_OK;
  }
 }




 fs->fs_type = 0;
 fs->drv = (BYTE)(vol);
 stat = disk_initialize(fs->drv);
 if (stat & 0x01)
  return FR_NOT_READY;
 if (!0 && wmode && (stat & 0x04))
  return FR_WRITE_PROTECTED;





 bsect = 0;
 fmt = check_fs(fs, bsect);
 if (fmt == 1 || (!fmt && (0))) {
  for (i = 0; i < 4; i++) {
   pt = fs->win + 446 + i * 16;
   br[i] = pt[4] ? (DWORD)(*(DWORD*)(BYTE*)(&pt[8])) : 0;
  }
  i = 0;
  if (i) i--;
  do {
   bsect = br[i];
   fmt = bsect ? check_fs(fs, bsect) : 2;
  } while (!0 && fmt && ++i < 4);
 }
 if (fmt == 3) return FR_DISK_ERR;
 if (fmt) return FR_NO_FILESYSTEM;



 if ((WORD)(*(WORD*)(BYTE*)(fs->win + 11)) != ((UINT)512))
  return FR_NO_FILESYSTEM;

 fasize = (WORD)(*(WORD*)(BYTE*)(fs->win + 22));
 if (!fasize) fasize = (DWORD)(*(DWORD*)(BYTE*)(fs->win + 36));
 fs->fsize = fasize;

 fs->n_fats = fs->win[16];
 if (fs->n_fats != 1 && fs->n_fats != 2)
  return FR_NO_FILESYSTEM;
 fasize *= fs->n_fats;

 fs->csize = fs->win[13];
 if (!fs->csize || (fs->csize & (fs->csize - 1)))
  return FR_NO_FILESYSTEM;

 fs->n_rootdir = (WORD)(*(WORD*)(BYTE*)(fs->win + 17));
 if (fs->n_rootdir % (((UINT)512) / 32))
  return FR_NO_FILESYSTEM;

 tsect = (WORD)(*(WORD*)(BYTE*)(fs->win + 19));
 if (!tsect) tsect = (DWORD)(*(DWORD*)(BYTE*)(fs->win + 32));

 nrsv = (WORD)(*(WORD*)(BYTE*)(fs->win + 14));
 if (!nrsv) return FR_NO_FILESYSTEM;


 sysect = nrsv + fasize + fs->n_rootdir / (((UINT)512) / 32);
 if (tsect < sysect) return FR_NO_FILESYSTEM;
 nclst = (tsect - sysect) / fs->csize;
 if (!nclst) return FR_NO_FILESYSTEM;
 fmt = 1;
 if (nclst >= 4086U) fmt = 2;
 if (nclst >= 65526U) fmt = 3;


 fs->n_fatent = nclst + 2;
 fs->volbase = bsect;
 fs->fatbase = bsect + nrsv;
 fs->database = bsect + sysect;
 if (fmt == 3) {
  if (fs->n_rootdir) return FR_NO_FILESYSTEM;
  fs->dirbase = (DWORD)(*(DWORD*)(BYTE*)(fs->win + 44));
  szbfat = fs->n_fatent * 4;
 } else {
  if (!fs->n_rootdir) return FR_NO_FILESYSTEM;
  fs->dirbase = fs->fatbase + fasize;
  szbfat = (fmt == 2) ?
   fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
 }
 if (fs->fsize < (szbfat + (((UINT)512) - 1)) / ((UINT)512))
  return FR_NO_FILESYSTEM;



 fs->last_clust = fs->free_clust = 0xFFFFFFFF;


 fs->fsi_flag = 0x80;

 if (fmt == 3
  && (WORD)(*(WORD*)(BYTE*)(fs->win + 48)) == 1
  && move_window(fs, bsect + 1) == FR_OK)
 {
  fs->fsi_flag = 0;
  if ((WORD)(*(WORD*)(BYTE*)(fs->win + 510)) == 0xAA55
   && (DWORD)(*(DWORD*)(BYTE*)(fs->win + 0)) == 0x41615252
   && (DWORD)(*(DWORD*)(BYTE*)(fs->win + 484)) == 0x61417272)
  {

   fs->free_clust = (DWORD)(*(DWORD*)(BYTE*)(fs->win + 488));


   fs->last_clust = (DWORD)(*(DWORD*)(BYTE*)(fs->win + 492));

  }
 }


 fs->fs_type = fmt;
 fs->id = ++Fsid;







 return FR_OK;
}
# 2371 "ff.c"
static
FRESULT validate (
 void* obj
)
{
 FIL *fil = (FIL*)obj;


 if (!fil || !fil->fs || !fil->fs->fs_type || fil->fs->id != fil->id || (disk_status(fil->fs->drv) & 0x01))
  return FR_INVALID_OBJECT;

                  ;

 return FR_OK;
}
# 2402 "ff.c"
FRESULT f_mount (
 FATFS* fs,
 const TCHAR* path,
 BYTE opt
)
{
 FATFS *cfs;
 int vol;
 FRESULT res;
 const TCHAR *rp = path;


 vol = get_ldnumber(&rp);
 if (vol < 0) return FR_INVALID_DRIVE;
 cfs = FatFs[vol];

 if (cfs) {






  cfs->fs_type = 0;
 }

 if (fs) {
  fs->fs_type = 0;



 }
 FatFs[vol] = fs;

 if (!fs || opt != 1) return FR_OK;

 res = find_volume(&fs, &path, 0);
 return res;
}
# 2449 "ff.c"
FRESULT f_open (
 FIL* fp,
 const TCHAR* path,
 BYTE mode
)
{
 FRESULT res;
 DIR dj;
 BYTE *dir;
 BYTE sfn[12];

 DWORD dw, cl;



 if (!fp) return FR_INVALID_OBJECT;
 fp->fs = 0;


 dj.fs = FatFs[0];




 mode &= 0x01 | 0x02 | 0x08 | 0x10 | 0x04;
 res = find_volume(&dj.fs, &path, (BYTE)(mode & ~0x01));




 if (res == FR_OK) {
  (dj).fn = sfn;
  res = follow_path(&dj, path);
  dir = dj.dir;

  if (res == FR_OK) {
   if (!dir)
    res = FR_INVALID_NAME;




  }

  if (mode & (0x08 | 0x10 | 0x04)) {
   if (res != FR_OK) {
    if (res == FR_NO_FILE)



     res = dir_register(&dj);

    mode |= 0x08;
    dir = dj.dir;
   }
   else {
    if (dir[11] & (0x01 | 0x10)) {
     res = FR_DENIED;
    } else {
     if (mode & 0x04)
      res = FR_EXIST;
    }
   }
   if (res == FR_OK && (mode & 0x08)) {
    dw = ((DWORD)(2015 - 1980) << 25 | (DWORD)1 << 21 | (DWORD)1 << 16);
    *(DWORD*)(BYTE*)(dir + 14)=(DWORD)(dw);
    *(DWORD*)(BYTE*)(dir + 22)=(DWORD)(dw);
    dir[11] = 0;
    *(DWORD*)(BYTE*)(dir + 28)=(DWORD)(0);
    cl = ld_clust(dj.fs, dir);
    st_clust(dir, 0);
    dj.fs->wflag = 1;
    if (cl) {
     dw = dj.fs->winsect;
     res = remove_chain(dj.fs, cl);
     if (res == FR_OK) {
      dj.fs->last_clust = cl - 1;
      res = move_window(dj.fs, dw);
     }
    }
   }
  }
  else {
   if (res == FR_OK) {
    if (dir[11] & 0x10) {
     res = FR_NO_FILE;
    } else {
     if ((mode & 0x02) && (dir[11] & 0x01))
      res = FR_DENIED;
    }
   }
  }
  if (res == FR_OK) {
   if (mode & 0x08)
    mode |= 0x20;
   fp->dir_sect = dj.fs->winsect;
   fp->dir_ptr = dir;




  }
# 2563 "ff.c"
            ;

  if (res == FR_OK) {
   fp->flag = mode;
   fp->err = 0;
   fp->sclust = ld_clust(dj.fs, dir);
   fp->fsize = (DWORD)(*(DWORD*)(BYTE*)(dir + 28));
   fp->fptr = 0;
   fp->dsect = 0;



   fp->fs = dj.fs;
   fp->id = fp->fs->id;
  }
 }

 return res;
}
# 2590 "ff.c"
FRESULT f_read (
 FIL* fp,
 void* buff,
 UINT btr,
 UINT* br
)
{
 FRESULT res;
 DWORD clst, sect, remain;
 UINT rcnt, cc;
 BYTE csect, *rbuff = (BYTE*)buff;


 *br = 0;

 res = validate(fp);
 if (res != FR_OK) return res;
 if (fp->err)
  return (FRESULT)fp->err;
 if (!(fp->flag & 0x01))
  return FR_DENIED;
 remain = fp->fsize - fp->fptr;
 if (btr > remain) btr = (UINT)remain;

 for ( ; btr;
  rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
  if ((fp->fptr % ((UINT)512)) == 0) {
   csect = (BYTE)(fp->fptr / ((UINT)512) & (fp->fs->csize - 1));
   if (!csect) {
    if (fp->fptr == 0) {
     clst = fp->sclust;
    } else {





      clst = get_fat(fp->fs, fp->clust);
    }
    if (clst < 2) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
    if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
    fp->clust = clst;
   }
   sect = clust2sect(fp->fs, fp->clust);
   if (!sect) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
   sect += csect;
   cc = btr / ((UINT)512);
   if (cc) {
    if (csect + cc > fp->fs->csize)
     cc = fp->fs->csize - csect;
    if (disk_read(fp->fs->drv, rbuff, sect, cc) != RES_OK)
     { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };


    if (fp->fs->wflag && fp->fs->winsect - sect < cc)
     mem_cpy(rbuff + ((fp->fs->winsect - sect) * ((UINT)512)), fp->fs->win, ((UINT)512));





    rcnt = ((UINT)512) * cc;
    continue;
   }
# 2667 "ff.c"
   fp->dsect = sect;
  }
  rcnt = ((UINT)512) - ((UINT)fp->fptr % ((UINT)512));
  if (rcnt > btr) rcnt = btr;

  if (move_window(fp->fs, fp->dsect) != FR_OK)
   { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
  mem_cpy(rbuff, &fp->fs->win[fp->fptr % ((UINT)512)], rcnt);



 }

 return FR_OK;
}
# 2691 "ff.c"
FRESULT f_write (
 FIL* fp,
 const void *buff,
 UINT btw,
 UINT* bw
)
{
 FRESULT res;
 DWORD clst, sect;
 UINT wcnt, cc;
 const BYTE *wbuff = (const BYTE*)buff;
 BYTE csect;


 *bw = 0;

 res = validate(fp);
 if (res != FR_OK) return res;
 if (fp->err)
  return (FRESULT)fp->err;
 if (!(fp->flag & 0x02))
  return FR_DENIED;
 if (fp->fptr + btw < fp->fptr) btw = 0;

 for ( ; btw;
  wbuff += wcnt, fp->fptr += wcnt, *bw += wcnt, btw -= wcnt) {
  if ((fp->fptr % ((UINT)512)) == 0) {
   csect = (BYTE)(fp->fptr / ((UINT)512) & (fp->fs->csize - 1));
   if (!csect) {
    if (fp->fptr == 0) {
     clst = fp->sclust;
     if (clst == 0)
      clst = create_chain(fp->fs, 0);
    } else {





      clst = create_chain(fp->fs, fp->clust);
    }
    if (clst == 0) break;
    if (clst == 1) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
    if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
    fp->clust = clst;
    if (fp->sclust == 0) fp->sclust = clst;
   }

   if (fp->fs->winsect == fp->dsect && sync_window(fp->fs))
    { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };







   sect = clust2sect(fp->fs, fp->clust);
   if (!sect) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
   sect += csect;
   cc = btw / ((UINT)512);
   if (cc) {
    if (csect + cc > fp->fs->csize)
     cc = fp->fs->csize - csect;
    if (disk_write(fp->fs->drv, wbuff, sect, cc) != RES_OK)
     { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };


    if (fp->fs->winsect - sect < cc) {
     mem_cpy(fp->fs->win, wbuff + ((fp->fs->winsect - sect) * ((UINT)512)), ((UINT)512));
     fp->fs->wflag = 0;
    }







    wcnt = ((UINT)512) * cc;
    continue;
   }

   if (fp->fptr >= fp->fsize) {
    if (sync_window(fp->fs)) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
    fp->fs->winsect = sect;
   }







   fp->dsect = sect;
  }
  wcnt = ((UINT)512) - ((UINT)fp->fptr % ((UINT)512));
  if (wcnt > btw) wcnt = btw;

  if (move_window(fp->fs, fp->dsect) != FR_OK)
   { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
  mem_cpy(&fp->fs->win[fp->fptr % ((UINT)512)], wbuff, wcnt);
  fp->fs->wflag = 1;




 }

 if (fp->fptr > fp->fsize) fp->fsize = fp->fptr;
 fp->flag |= 0x20;

 return FR_OK;
}
# 2813 "ff.c"
FRESULT f_sync (
 FIL* fp
)
{
 FRESULT res;
 DWORD tm;
 BYTE *dir;


 res = validate(fp);
 if (res == FR_OK) {
  if (fp->flag & 0x20) {
# 2833 "ff.c"
   res = move_window(fp->fs, fp->dir_sect);
   if (res == FR_OK) {
    dir = fp->dir_ptr;
    dir[11] |= 0x20;
    *(DWORD*)(BYTE*)(dir + 28)=(DWORD)(fp->fsize);
    st_clust(dir, fp->sclust);
    tm = ((DWORD)(2015 - 1980) << 25 | (DWORD)1 << 21 | (DWORD)1 << 16);
    *(DWORD*)(BYTE*)(dir + 22)=(DWORD)(tm);
    *(WORD*)(BYTE*)(dir + 18)=(WORD)(0);
    fp->flag &= ~0x20;
    fp->fs->wflag = 1;
    res = sync_fs(fp->fs);
   }
  }
 }

 return res;
}
# 2861 "ff.c"
FRESULT f_close (
 FIL *fp
)
{
 FRESULT res;



 res = f_sync(fp);
 if (res == FR_OK)

 {
  res = validate(fp);
  if (res == FR_OK) {







    fp->fs = 0;



  }
 }
 return res;
}
# 3033 "ff.c"
FRESULT f_lseek (
 FIL* fp,
 DWORD ofs
)
{
 FRESULT res;
 DWORD clst, bcs, nsect, ifptr;





 res = validate(fp);
 if (res != FR_OK) return res;
 if (fp->err)
  return (FRESULT)fp->err;
# 3106 "ff.c"
 {
  if (ofs > fp->fsize

    && !(fp->flag & 0x02)

   ) ofs = fp->fsize;

  ifptr = fp->fptr;
  fp->fptr = nsect = 0;
  if (ofs) {
   bcs = (DWORD)fp->fs->csize * ((UINT)512);
   if (ifptr > 0 &&
    (ofs - 1) / bcs >= (ifptr - 1) / bcs) {
    fp->fptr = (ifptr - 1) & ~(bcs - 1);
    ofs -= fp->fptr;
    clst = fp->clust;
   } else {
    clst = fp->sclust;

    if (clst == 0) {
     clst = create_chain(fp->fs, 0);
     if (clst == 1) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
     if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
     fp->sclust = clst;
    }

    fp->clust = clst;
   }
   if (clst != 0) {
    while (ofs > bcs) {

     if (fp->flag & 0x02) {
      clst = create_chain(fp->fs, clst);
      if (clst == 0) {
       ofs = bcs; break;
      }
     } else

      clst = get_fat(fp->fs, clst);
     if (clst == 0xFFFFFFFF) { fp->err = (BYTE)(FR_DISK_ERR); return FR_DISK_ERR; };
     if (clst <= 1 || clst >= fp->fs->n_fatent) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
     fp->clust = clst;
     fp->fptr += bcs;
     ofs -= bcs;
    }
    fp->fptr += ofs;
    if (ofs % ((UINT)512)) {
     nsect = clust2sect(fp->fs, clst);
     if (!nsect) { fp->err = (BYTE)(FR_INT_ERR); return FR_INT_ERR; };
     nsect += ofs / ((UINT)512);
    }
   }
  }
  if (fp->fptr % ((UINT)512) && nsect != fp->dsect) {
# 3171 "ff.c"
   fp->dsect = nsect;
  }

  if (fp->fptr > fp->fsize) {
   fp->fsize = fp->fptr;
   fp->flag |= 0x20;
  }

 }

 return res;
}
