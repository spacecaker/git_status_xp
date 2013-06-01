.class Lcom/iLoong/launcher/desktop/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/desktop/iLoongLauncher;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x3

    const/16 v2, 0x400

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->A()Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a(IFFLjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->A()Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a(IFFLjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->A()Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a(IFFLjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->A()Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-float v4, v4

    const-string v5, "toastString"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/iLoong/launcher/Desktop3D/circleSomethingDraw;->a(IFFLjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->o()V

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/d/a;

    iput-object v0, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d:Lcom/iLoong/launcher/d/a;

    iget-object v1, v1, Lcom/iLoong/launcher/d/a;->c:Lcom/iLoong/launcher/a/h;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Lcom/iLoong/launcher/a/e;)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/iLoong/launcher/widget/d;->a(I)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/widget/c;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v2, v1, v4}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/a/c;Z)Z

    iget-object v1, v1, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->setWidget(Lcom/iLoong/launcher/widget/c;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v1, v1, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h:Lcom/iLoong/launcher/Desktop3D/g;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/Desktop3D/g;->a(Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;I)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c(Lcom/iLoong/launcher/desktop/iLoongLauncher;)[I

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aput v1, v0, v5

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->c(Lcom/iLoong/launcher/desktop/iLoongLauncher;)[I

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    aput v1, v0, v4

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->I:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->j()V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/widget/c;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/widget/c;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/widget/WidgetHostView;

    invoke-virtual {v0}, Lcom/iLoong/launcher/widget/WidgetHostView;->b()Z

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->b(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/a/j;

    iget-object v2, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-object v1, v0

    check-cast v1, Lcom/iLoong/launcher/a/f;

    iget-object v1, v1, Lcom/iLoong/launcher/a/f;->a:Landroid/content/Intent;

    invoke-virtual {v2, v1, v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->d(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "exit"

    const-string v1, "!!!Exit!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->finish()V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/Workspace/Workspace;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v5}, Lcom/iLoong/launcher/Workspace/Workspace;->scrollTo(II)V

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->a(I)V

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->b(I)V

    goto/16 :goto_0

    :sswitch_1a
    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->bq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e(Lcom/iLoong/launcher/desktop/iLoongLauncher;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->f(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Landroid/os/Vibrator;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    :sswitch_1b
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0, v5, v4}, Lcom/iLoong/launcher/Workspace/Workspace;->performHapticFeedback(II)Z

    goto/16 :goto_0

    :sswitch_1c
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/Workspace/Workspace;->playSoundEffect(I)V

    goto/16 :goto_0

    :sswitch_1d
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/Workspace;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_1e
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0, v5}, Lcom/iLoong/launcher/Workspace/Workspace;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_1f
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/UI3DEngine/View3D;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/UI3DEngine/View3D;I)V

    goto/16 :goto_0

    :sswitch_20
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p1, Landroid/os/Message;->arg1:I

    aput v3, v2, v5

    iget v3, p1, Landroid/os/Message;->arg2:I

    aput v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/ComponentName;[I)V

    goto/16 :goto_0

    :sswitch_21
    iget-object v1, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    :sswitch_22
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->adapter:Landroid/bluetooth/BluetoothAdapter;

    goto/16 :goto_0

    :sswitch_23
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->g(Lcom/iLoong/launcher/desktop/iLoongLauncher;)V

    goto/16 :goto_0

    :sswitch_24
    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->b()V

    goto/16 :goto_0

    :sswitch_25
    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->e()V

    goto/16 :goto_0

    :sswitch_26
    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->f()V

    goto/16 :goto_0

    :sswitch_27
    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->c()V

    goto/16 :goto_0

    :sswitch_28
    invoke-static {}, Lcom/iLoong/launcher/cling/i;->a()Lcom/iLoong/launcher/cling/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/cling/i;->d()V

    goto/16 :goto_0

    :sswitch_29
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_2a
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_2b
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->a(Lcom/iLoong/launcher/desktop/iLoongLauncher;I)V

    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_2c
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, -0x401

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    :sswitch_2d
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    :sswitch_2e
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/Workspace;->c()V

    goto/16 :goto_0

    :sswitch_2f
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/Workspace;->d()V

    goto/16 :goto_0

    :sswitch_30
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/Workspace;->e()V

    goto/16 :goto_0

    :sswitch_31
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    iget-object v0, v0, Lcom/iLoong/launcher/desktop/iLoongLauncher;->e:Lcom/iLoong/launcher/Workspace/Workspace;

    invoke-virtual {v0}, Lcom/iLoong/launcher/Workspace/Workspace;->f()V

    goto/16 :goto_0

    :sswitch_32
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/desktop/p;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/p;-><init>(Lcom/iLoong/launcher/desktop/k;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    goto/16 :goto_0

    :sswitch_33
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/desktop/o;

    invoke-direct {v1, p0}, Lcom/iLoong/launcher/desktop/o;-><init>(Lcom/iLoong/launcher/desktop/k;)V

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    goto/16 :goto_0

    :sswitch_34
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/app/LauncherModel;->d()V

    goto/16 :goto_0

    :sswitch_35
    iget-object v0, p0, Lcom/iLoong/launcher/desktop/k;->a:Lcom/iLoong/launcher/desktop/iLoongLauncher;

    invoke-static {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->h(Lcom/iLoong/launcher/desktop/iLoongLauncher;)Lcom/iLoong/launcher/app/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/app/LauncherModel;->e()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_7
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_d
        0xb -> :sswitch_e
        0xc -> :sswitch_10
        0xd -> :sswitch_f
        0xe -> :sswitch_8
        0xf -> :sswitch_12
        0x10 -> :sswitch_11
        0x11 -> :sswitch_13
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_17
        0x15 -> :sswitch_18
        0x16 -> :sswitch_19
        0x17 -> :sswitch_1a
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_1f
        0x1b -> :sswitch_2a
        0x1c -> :sswitch_6
        0x1d -> :sswitch_24
        0x1e -> :sswitch_25
        0x1f -> :sswitch_26
        0x20 -> :sswitch_2b
        0x21 -> :sswitch_2d
        0x22 -> :sswitch_2c
        0x24 -> :sswitch_2e
        0x25 -> :sswitch_2f
        0x26 -> :sswitch_30
        0x27 -> :sswitch_31
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_20
        0x2b -> :sswitch_21
        0x2c -> :sswitch_22
        0x2d -> :sswitch_23
        0x2e -> :sswitch_b
        0x2f -> :sswitch_32
        0x30 -> :sswitch_33
        0x31 -> :sswitch_c
        0x32 -> :sswitch_5
        0x33 -> :sswitch_29
        0x34 -> :sswitch_1b
        0x35 -> :sswitch_1c
        0x36 -> :sswitch_34
        0x37 -> :sswitch_35
        0x1e61 -> :sswitch_14
    .end sparse-switch
.end method
