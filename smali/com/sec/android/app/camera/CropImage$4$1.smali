.class Lcom/sec/android/app/camera/CropImage$4$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CropImage$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage$4;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$4$1;->this$1:Lcom/sec/android/app/camera/CropImage$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage$4$1;->this$1:Lcom/sec/android/app/camera/CropImage$4;

    iget-object v2, v2, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #setter for: Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CropImage;->access$102(Lcom/sec/android/app/camera/CropImage;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 223
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, intentForGallery:Landroid/content/Intent;
    const-string v2, "com.cooliris.media"

    const-string v3, "com.cooliris.media.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage$4$1;->this$1:Lcom/sec/android/app/camera/CropImage$4;

    iget-object v2, v2, Lcom/sec/android/app/camera/CropImage$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    const-string v2, "from-Camera"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage$4$1;->this$1:Lcom/sec/android/app/camera/CropImage$4;

    iget-object v2, v2, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CropImage;->startActivity(Landroid/content/Intent;)V

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage$4$1;->this$1:Lcom/sec/android/app/camera/CropImage$4;

    iget-object v2, v2, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    .line 232
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage$4$1;->this$1:Lcom/sec/android/app/camera/CropImage$4;

    iget-object v2, v2, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage$4$1;->this$1:Lcom/sec/android/app/camera/CropImage$4;

    iget-object v2, v2, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    return-void

    .line 235
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 236
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
