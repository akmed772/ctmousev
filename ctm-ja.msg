; This file is a part of CTMOUSEV (CuteMouse with DOS/V support) source.
; Here are messages in Japanese.
; The file must be saved in Shift JIS encoding (codepage 932).

DE_needvga       db 'No VGA? Use older CTMOUSE if you need EGA RIL support',nl,eos
DE_error		db nl,'エラー：無効なオプション'
DE_option	db eos
DE_argument	db ' 引数',eos
DE_help		db 5,nl,'ヘルプを表示するにはコマンドに /? を付けて実行して下さい',eos

DE_mousepresent	db 5,'CuteMouse は既に常駐しています',eos
DE_notfound	db 5,'エラー：デバイスが見つかりません',eos
;;+E_noIRQ	db 5,'エラー：IRQラインが見つかりません',eos

DE_nocute	db 1,'CuteMouse はインストールされませんでした',eos
DE_notunload	db 2,'CuteMouse の解放に失敗：別の割り込みが介入しています',eos
DS_unloaded	db 0,'CuteMouse は正常に解放されました',eos

DS_reset		db '常駐部を次のポートにリセット：',eos
DS_installed	db '使用ポート：',eos
DS_atPS2		db 'PS/2',eos
DS_atCOM		db 'COM'
DS_atIO		db '0000h/IRQ'
DS_in		db ') in ',eos
DS_inMSYS	db 'Mouse Systems mode',eos
DS_inMS		db 'Microsoft mode',eos
DS_inLT		db 'Logitech mode',eos
DS_wheel		db ' (wheel present)'
DS_CRLF		db nl,eos

DCopyright	db nl,'CuteMouse v',CTMRELEASE,CTMBUILD,nl,eos
DSyntax		label byte
    db 0,nl,'オプション：',nl
    db '  /V	   - 逆探索：シリアルマウスの後にPS/2マウスを探す',nl
    db '  /P	   - シリアルポートを探さず、PS/2マウスを強制',nl
    db '  /S[c[i]] - COMポート c (1-4)、IRQ i (1-7) でシリアルマウスを強制',nl
    db '  /3	   - マイクロソフトまたはPS/2マウスで3ボタンモードを強制',nl
; Note: /O now acts inverse compared to 2.1 beta 3
    db '  /O       - PS/2やBIOS USBホイール検出を有効にする (動作不安定)',nl
; 2008: made /Y (ignore MSys) the default and introduced /M (enable MSys)
;   db '  /Y	   - 非 PNPデバイスへの Mouse Systems モードを試さない',nl,nl
    db '  /M       - Mouse Systems / Genius 製の非PNPマウスを試す',nl,nl
    db '  /R[h[v]] - 水平/垂直分解能: h,v = 1-9 または 0 (自動)',nl
    db '	     (既定：hを自動、vをhと同じに指定)',nl
    db '  /L	   - ボタンを左右入れ替える',nl,nl
;
    db '  /B	   - 既に CuteMouse が常駐している場合は実行を中止',nl
    db '  /N	   - 既に CuteMouse が常駐していても新しく常駐',nl
    db '	     (バッチファイルの最後に解放する場合などに使用)',nl
    db '  /W	   - CuteMouse を UMB メモリーにロードしない',nl
    db '  /U	   - CuteMouse をアンインストール、メモリーへの常駐を解放',nl
    db '  /?	   - このヘルプを表示',eos
