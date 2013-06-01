.class public abstract Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field protected cooPluginHostCallback:Lcom/iLoong/launcher/UI3DEngine/adapter/ICooPluginHostCallback;

.field protected refreshRender:Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->refreshRender:Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->cooPluginHostCallback:Lcom/iLoong/launcher/UI3DEngine/adapter/ICooPluginHostCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->transform:Z

    return-void
.end method


# virtual methods
.method public getParticalView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefreshRender()Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->refreshRender:Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onDelete()V
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onKeyEvent(II)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onUninstall()V
    .locals 0

    return-void
.end method

.method public setCooPluginHostCallback(Lcom/iLoong/launcher/UI3DEngine/adapter/ICooPluginHostCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->cooPluginHostCallback:Lcom/iLoong/launcher/UI3DEngine/adapter/ICooPluginHostCallback;

    return-void
.end method

.method public setRefreshRender(Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->refreshRender:Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;

    return-void
.end method
