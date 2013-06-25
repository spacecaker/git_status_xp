.class Landroid/app/ShutdownDialog$1;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ShutdownDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShutdownDialog;


# direct methods
.method constructor <init>(Landroid/app/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v1

    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)[I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/LibQmg;->qmgLoadFrame(I[I)I

    move-result v0

    .line 124
    .local v0, ret:I
    if-ltz v0, :cond_2

    .line 125
    const-string v1, "ShutdownDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Draw frame: ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->width:I
    invoke-static {v3}, Landroid/app/ShutdownDialog;->access$300(Landroid/app/ShutdownDialog;)I

    move-result v3

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->height:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Landroid/app/ShutdownDialog;->access$202(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 127
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    if-nez v0, :cond_1

    .line 130
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 133
    :cond_0
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v1

    invoke-static {v1}, Landroid/app/LibQmg;->qmgClose(I)I

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$700(Landroid/app/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12c

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 142
    :cond_3
    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v1

    invoke-static {v1}, Landroid/app/LibQmg;->qmgClose(I)I

    goto :goto_0
.end method
