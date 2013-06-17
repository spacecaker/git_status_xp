.class Lcom/sec/android/app/camera/Panoramax1View$1;
.super Landroid/os/Handler;
.source "Panoramax1View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Panoramax1View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Panoramax1View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Panoramax1View;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/Panoramax1View$1;->this$0:Lcom/sec/android/app/camera/Panoramax1View;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 57
    :pswitch_0
    const-string v0, "Panoramax1View"

    const-string v1, "Inactivity timer is expired. finish."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View$1;->this$0:Lcom/sec/android/app/camera/Panoramax1View;

    #getter for: Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/Panoramax1View;->access$000(Lcom/sec/android/app/camera/Panoramax1View;)Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View$1;->this$0:Lcom/sec/android/app/camera/Panoramax1View;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
