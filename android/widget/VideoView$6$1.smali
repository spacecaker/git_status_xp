.class Landroid/widget/VideoView$6$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/VideoView$6;


# direct methods
.method constructor <init>(Landroid/widget/VideoView$6;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Landroid/widget/VideoView$6$1;->this$1:Landroid/widget/VideoView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x4

    .line 549
    if-ne p2, v1, :cond_0

    .line 550
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 551
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 552
    iget-object v1, p0, Landroid/widget/VideoView$6$1;->this$1:Landroid/widget/VideoView$6;

    iget-object v1, v1, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget-object v1, v1, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 554
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
