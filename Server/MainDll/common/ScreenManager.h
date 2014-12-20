// ScreenManager.h: interface for the CScreenManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SCREENMANAGER_H__C5D460AD_1179_4750_A26B_29E31B285C12__INCLUDED_)
#define AFX_SCREENMANAGER_H__C5D460AD_1179_4750_A26B_29E31B285C12__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Manager.h"
#include "ScreenSpy.h"
class CScreenManager : public CManager  
{
public:
	CScreenManager(CClientSocket *pClient);
	virtual ~CScreenManager();
public:
	void UpdateLocalClipboard( char *buf, int len );
	void ProcessCommand( LPBYTE lpBuffer, UINT nSize );
	void SendLocalClipboard();
	void OnReceive(LPBYTE lpBuffer, UINT nSize);
	void sendNextScreen();
	void sendFirstScreen();
	void sendBITMAPINFO();
	static DWORD WINAPI WorkThread(LPVOID lparam);
	int GetCurrentPixelBits();
	void ResetScreen(int biBitCount);
	bool IsMetricsChange();
	bool IsConnect();
	static DWORD WINAPI ControlThread(LPVOID lparam);
	bool m_bIsWorking;
	bool m_bIsBlockInput;
	bool m_bIsBlankScreen;
private:
	BYTE	m_bAlgorithm;
	bool	m_bIsCaptureLayer;
	int	m_biBitCount;
	HANDLE	m_hWorkThread, m_hBlankThread;
	CCursorInfo	m_CursorInfo;
	     CScreenSpy	*m_pScreenSpy;
};

#endif // !defined(AFX_SCREENMANAGER_H__C5D460AD_1179_4750_A26B_29E31B285C12__INCLUDED_)
