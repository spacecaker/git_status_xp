.class Lcom/sec/android/app/camera/ReviewImage$7;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ReviewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v0, v0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v1, v1, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/gallery/IImageList;->removeImageAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "SAMSUNG_START_CACHE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ReviewImage;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v0, v0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v0, v0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v1, v1, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v1, v0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    #getter for: Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;
    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->clear()V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    #getter for: Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;
    invoke-static {v0}, Lcom/sec/android/app/camera/ReviewImage;->access$800(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/BitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/BitmapCache;->clear()V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v1, v1, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    goto :goto_0
.end method
