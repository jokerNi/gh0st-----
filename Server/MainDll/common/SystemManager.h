// SystemManager.h: interface for the CSystemManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SYSTEMMANAGER_H__42E07A3A_1F21_40D6_AC29_225649337B14__INCLUDED_)
#define AFX_SYSTEMMANAGER_H__42E07A3A_1F21_40D6_AC29_225649337B14__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Manager.h"

class CSystemManager : public CManager  
{
public:
	static void ShutdownWindows( DWORD dwReason );
	static bool DebugPrivilege(const char *PName,BOOL bEnable);
	static bool CALLBACK EnumWindowsProc( HWND hwnd, LPARAM lParam);
	CSystemManager(CClientSocket *pClient,BOOL bHow);
	virtual ~CSystemManager();

private:
	BOOL m_bHow;//标识 用以区别进程管理和窗口管理
	void OnReceive(LPBYTE lpBuffer, UINT nSize);
	void KillProcess(LPBYTE lpBuffer, UINT nSize);
	LPBYTE getProcessList();
	void SendProcessList();
protected:
	void TestWindow(LPBYTE buf);
	void CloseWindow(LPBYTE buf);
	void SendWindowsList();
	LPBYTE getWindowsList();
};

#endif // !defined(AFX_SYSTEMMANAGER_H__42E07A3A_1F21_40D6_AC29_225649337B14__INCLUDED_)
