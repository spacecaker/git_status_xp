.class public Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;
.super Ljava/lang/Object;


# static fields
.field public static final CIRCLE_EVENT_DOWN:I = 0x0

.field public static final CIRCLE_EVENT_DRAG:I = 0x2

.field public static final CIRCLE_EVENT_TOAST:I = 0x5

.field public static final CIRCLE_EVENT_UP:I = 0x1

.field public static final EVENT_ADD_SYS_SHORTCUT:I = 0xa

.field public static final EVENT_ADD_SYS_WIDGET:I = 0x9

.field public static final EVENT_CANNOT_FOUND_APK_DIALOG:I = 0x32

.field public static final EVENT_CLICK_TO_WALLPAPER:I = 0x31

.field public static final EVENT_CREATE_BLUETOOTH:I = 0x2c

.field public static final EVENT_CREATE_LOCKSCREEN:I = 0x2d

.field public static final EVENT_CREATE_POP_DIALOG:I = 0x4

.field public static final EVENT_CREATE_PROG_DIALOG:I = 0x6

.field public static final EVENT_CREATE_RENAME_FOLDER:I = 0xe

.field public static final EVENT_CREATE_RESTART_DIALOG:I = 0x33

.field public static final EVENT_DELETE_NOT_EMPTY_FOLDER:I = 0x1b

.field public static final EVENT_DELETE_PAGE:I = 0x10

.field public static final EVENT_DELETE_SYS_WIDGET:I = 0xb

.field public static final EVENT_DOWNLOAD_WIDGET_DIALOG:I = 0x1c

.field public static final EVENT_LAUNCH_HOTBUTTON:I = 0x11

.field public static final EVENT_PICK_3DWIDGET:I = 0x23

.field public static final EVENT_SELECT_SHORTCUT:I = 0xc

.field public static final EVENT_START_ACTIVITY:I = 0xf

.field public static final EVENT_TOAST_USER:I = 0x3

.field public static final EVENT_UPDATE_SYS_WIDGET:I = 0x8

.field public static final EVENT_WIDGET_GET_VIEW:I = 0xd

.field public static final EVENT_WIDGET_MEMO:I = 0xc

.field public static final MSG_ADD_SHORTCUT:I = 0x2b

.field public static final MSG_ADD_WIDGET:I = 0x2a

.field public static final MSG_ADD_WORKSPACE_CELL:I = 0x15

.field public static final MSG_CANCEL_WAIT_CLING:I = 0x29

.field public static final MSG_CHANGE_THREAD_PRIORITY:I = 0x37

.field public static final MSG_HIDE_CLING_POINT:I = 0x1e

.field public static final MSG_HIDE_WORKSPACE:I = 0x13

.field public static final MSG_MOVE_IN_MTKWIDGET:I = 0x26

.field public static final MSG_MOVE_OUT_MTKWIDGET:I = 0x27

.field public static final MSG_MOVE_WIDGET:I = 0x1a

.field public static final MSG_ON_BEGIN_OPEN_WIDGET:I = 0x18

.field public static final MSG_ON_COMPLETE_CLOSE_WIDGET:I = 0x19

.field public static final MSG_REFRESH_CLING_STATE:I = 0x1d

.field public static final MSG_REMOVE_WORKSPACE_CELL:I = 0x16

.field public static final MSG_RESET_TEXTURE_WRITE:I = 0x30

.field public static final MSG_SCROLL_WORKSPACE:I = 0x14

.field public static final MSG_SHOW_CLING_POINT:I = 0x1f

.field public static final MSG_SHOW_SORT_DIALOG:I = 0x20

.field public static final MSG_SHOW_WORKSPACE:I = 0x12

.field public static final MSG_START_COVER_MTKWIDGET:I = 0x24

.field public static final MSG_STOP_COVER_MTKWIDGET:I = 0x25

.field public static final MSG_SYS_HIDE_NOTICEBAR:I = 0x21

.field public static final MSG_SYS_PLAY_SOUND_EFFECT:I = 0x35

.field public static final MSG_SYS_SHOW_NOTICEBAR:I = 0x22

.field public static final MSG_SYS_VIBRATOR:I = 0x34

.field public static final MSG_UPDATE_PACKAGE:I = 0x36

.field public static final MSG_UPDATE_TEXTURE_DELAY:I = 0x2f

.field public static final MSG_VIBRATOR:I = 0x17

.field public static final MSG_WAIT_CLING:I = 0x28

.field public static final MSG_WIDGET_FOCUS:I = 0x2e

.field private static a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShortcutFromAllApp(Landroid/content/ComponentName;II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2b

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static addWidgetFromAllApp(Landroid/content/ComponentName;II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2a

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static changeLoadThreadPriority()V
    .locals 3

    const/16 v2, 0x37

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static deleteSysWidget(Lcom/iLoong/launcher/widget/c;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static getSysWidgetView(Lcom/iLoong/launcher/widget/WidgetHostView;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static launchHotButton()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static resetTextureWriteDelay(J)V
    .locals 3

    const/16 v2, 0x30

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static sendAddAppWidgetMsg(Lcom/iLoong/launcher/widget/c;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendAddShortcutMsg(II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p0, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendAddWorkspaceCellMsg(I)V
    .locals 3

    const/16 v0, 0x15

    int-to-float v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendCancelWaitClingMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x29

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendCannotFoundApkMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x32

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendCircleToastMsg(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-eqz p0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "toastString"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendClickToWallPaperMsg(II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p0, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendCreateBlueTooth()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2c

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendCreateLockScreen()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2d

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendCreatePopDialogMsg()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendCreateProgressDialogMsg()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendCreateRestartDialogMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x33

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendDeletePageMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x10

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendDownloadWidgetMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x1c

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendHideClingPointMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x1e

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendHideNoticeMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x21

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendHideWorkspaceMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x13

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendMoveInMTKWidgetMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x26

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendMoveOutMTKWidgetMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x27

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendMoveWidgetMsg(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1a

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendOurEventMsg(IFF)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p0, v0, Landroid/os/Message;->what:I

    float-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    float-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendOurToastMsg(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-eqz p0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "toastString"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendPopDeleteFolderDialogMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x1b

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendRefreshClingStateMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x1d

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendRemoveWorkspaceCellMsg(I)V
    .locals 3

    const/16 v0, 0x16

    int-to-float v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendRenameFolderMsg(Lcom/iLoong/launcher/d/a;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendScrollWorkspaceMsg(I)V
    .locals 3

    const/16 v0, 0x14

    int-to-float v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendSelectShortcutMsg(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendShowClingPointMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x1f

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendShowNoticeMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x22

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendShowSortDialogMsg(I)V
    .locals 3

    const/16 v0, 0x20

    int-to-float v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendShowWorkspaceMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendStartCoverMTKWidgetMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x24

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendStopCoverMTKWidgetMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x25

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendUpdateSysWidgetMsg(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sendWaitClingMsg()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x28

    invoke-static {v0, v1, v1}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurEventMsg(IFF)V

    return-void
.end method

.method public static sendWidgetFocusMsg(Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2e

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static startActivity(Lcom/iLoong/launcher/a/j;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sysPlaySoundEffect()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static sysVibrator()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x34

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static updatePackage()V
    .locals 4

    const/16 v2, 0x36

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static updateTextureAtlasDelay(J)V
    .locals 3

    const/16 v2, 0x2f

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static vibrator(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    sput-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    sget-object v1, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
