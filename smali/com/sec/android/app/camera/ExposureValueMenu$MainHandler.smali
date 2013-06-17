.class Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;
.super Landroid/os/Handler;
.source "ExposureValueMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ExposureValueMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ExposureValueMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/ExposureValueMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/ExposureValueMenu;Lcom/sec/android/app/camera/ExposureValueMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/ExposureValueMenu;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 281
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    #calls: Lcom/sec/android/app/camera/ExposureValueMenu;->stopExposureValueMenuTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$1000(Lcom/sec/android/app/camera/ExposureValueMenu;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$MainHandler;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
