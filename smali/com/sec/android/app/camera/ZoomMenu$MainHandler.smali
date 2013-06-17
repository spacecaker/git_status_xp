.class Lcom/sec/android/app/camera/ZoomMenu$MainHandler;
.super Landroid/os/Handler;
.source "ZoomMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ZoomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ZoomMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/ZoomMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/ZoomMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/ZoomMenu;Lcom/sec/android/app/camera/ZoomMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/ZoomMenu;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/ZoomMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 104
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/ZoomMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/ZoomMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
