//
//  header.h
//  Test
//
//  Created by xiaoyi li on 16/9/29.
//  Copyright © 2016年 xiaoyi li. All rights reserved.
//

#ifndef header_h
#define header_h

#include <stdio.h>

#include <openssl/x509.h>
#include <openssl/rsa.h>
#include <openssl/pem.h>
//**在这里需要声明函数**/
X509_NAME *parse_name(char *subject, long chtype, int multirdn);
X509_NAME *CreateDN(char *pbEmail, char *pbCN, char *pbOU, char *pbO, char *pbL, char *pbST, char *pbC);
int GenCSR(char *pbDN, int nDNLen, char *pCSR, size_t nCSRSize);

#endif /* header_h */
