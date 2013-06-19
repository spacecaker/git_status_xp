.class Lcom/android/systemui/statusbar/StatusBarView$KeyEventInjector;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventInjector"
.end annotation


# instance fields
.field private keyCode:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$KeyEventInjector;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarView$KeyEventInjector;->keyCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v0, "window"

    const-string v4, "StatusBarView"

    .line 425
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 427
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarView$KeyEventInjector;->keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x1

    .line 426
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    const-string v0, "StatusBarView"

    const-string v1, "Key down event not injected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 434
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarView$KeyEventInjector;->keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x1

    .line 433
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    const-string v0, "StatusBarView"

    const-string v1, "Key up event not injected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    const-string v1, "StatusBarView"

    const-string v1, "Error injecting key event"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
