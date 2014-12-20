// ShellManager.h: interface for the CShellManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SHELLMANAGER_H__8E71A611_99CA_468E_9F7A_1E9B106C44AB__INCLUDED_)
#define AFX_SHELLMANAGER_H__8E71A611_99CA_468E_9F7A_1E9B106C44AB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Manager.h"

class CShellManager : public CManager  
{
public:
	CShellManager(CClientSocket *pClient);
	virtual ~CShellManager();

private:
    HANDLE m_hReadPipeHandle;   //lang4.2   是不是很熟悉？？  上一节定义的变量在这里都有啊   哈哈 其实我就是仿照他做的
    HANDLE m_hWritePipeHandle;   //这些就是管道的句柄了
	HANDLE m_hReadPipeShell;
    HANDLE m_hWritePipeShell;
	
    HANDLE m_hProcessHandle;    //这些事进程和线程的句柄了啊    转到类的构造函数看看吧
	HANDLE m_hThreadHandle;
    HANDLE m_hThreadRead;
	HANDLE m_hThreadMonitor;

protected:
	void OnReceive(LPBYTE lpBuffer, UINT nSize);

	 static DWORD WINAPI ReadPipeThread(LPVOID lparam); 
	 static DWORD WINAPI MonitorThread(LPVOID lparam);
};

#endif // !defined(AFX_SHELLMANAGER_H__8E71A611_99CA_468E_9F7A_1E9B106C44AB__INCLUDED_)
