.class Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;
.super Ljava/lang/Object;
.source "ImageGetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageGetterRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ImageGetter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/ImageGetter;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/ImageGetter;Lcom/sec/android/app/camera/ImageGetter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;-><init>(Lcom/sec/android/app/camera/ImageGetter;)V

    return-void
.end method

.method private callback(IIZLcom/sec/android/app/camera/RotateBitmap;I)Ljava/lang/Runnable;
    .locals 7
    .parameter "position"
    .parameter "offset"
    .parameter "isThumb"
    .parameter "bitmap"
    .parameter "requestSerial"

    .prologue
    .line 106
    new-instance v0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;

    move-object v1, p0

    move v2, p5

    move v3, p1

    move v4, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$1;-><init>(Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;IIILcom/sec/android/app/camera/RotateBitmap;Z)V

    return-object v0
.end method

.method private completedCallback(I)Ljava/lang/Runnable;
    .locals 1
    .parameter "requestSerial"

    .prologue
    .line 120
    new-instance v0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable$2;-><init>(Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;I)V

    return-object v0
.end method

.method private executeRequest()V
    .locals 14

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mImageList:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$600(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v10

    .line 159
    .local v10, imageCount:I
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$100(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/ImageGetterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/ImageGetterCallback;->loadOrder()[I

    move-result-object v12

    .line 160
    .local v12, order:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v12

    if-ge v8, v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$200(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_1
    return-void

    .line 162
    :cond_1
    aget v2, v12, v8

    .line 163
    .local v2, offset:I
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$400(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v0

    add-int v11, v0, v2

    .line 164
    .local v11, imageNumber:I
    if-ltz v11, :cond_2

    if-ge v11, v10, :cond_2

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$100(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/ImageGetterCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$400(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/ImageGetterCallback;->wantsThumbnail(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mImageList:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$600(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v9

    .line 170
    .local v9, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v9, :cond_2

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$200(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Lcom/sec/android/app/camera/gallery/IImage;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 174
    .local v6, b:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$200(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$400(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v9}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v0

    invoke-direct {v4, v6, v0}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$000(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->callback(IIZLcom/sec/android/app/camera/RotateBitmap;I)Ljava/lang/Runnable;

    move-result-object v7

    .line 184
    .local v7, cb:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mHandler:Lcom/sec/android/app/camera/GetterHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$700(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/GetterHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 188
    .end local v2           #offset:I
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v7           #cb:Ljava/lang/Runnable;
    .end local v9           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v11           #imageNumber:I
    :cond_5
    const/4 v8, 0x0

    :goto_3
    array-length v0, v12

    if-ge v8, v0, :cond_9

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$200(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    aget v2, v12, v8

    .line 191
    .restart local v2       #offset:I
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$400(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v0

    add-int v11, v0, v2

    .line 192
    .restart local v11       #imageNumber:I
    if-ltz v11, :cond_6

    if-ge v11, v10, :cond_6

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$100(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/ImageGetterCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$400(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/ImageGetterCallback;->wantsFullImage(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 188
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mImageList:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$600(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v9

    .line 198
    .restart local v9       #image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v9, :cond_6

    .line 199
    instance-of v0, v9, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-nez v0, :cond_6

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$200(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$100(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/ImageGetterCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$400(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/ImageGetterCallback;->fullImageSizeToUse(II)I

    move-result v13

    .line 206
    .local v13, sizeToUse:I
    const/high16 v0, 0x10

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {v9, v13, v0, v1, v3}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 209
    .restart local v6       #b:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$200(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 211
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 215
    :cond_8
    new-instance v4, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v9}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v0

    invoke-direct {v4, v6, v0}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    .line 218
    .local v4, rb:Lcom/sec/android/app/camera/RotateBitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$400(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$000(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->callback(IIZLcom/sec/android/app/camera/RotateBitmap;I)Ljava/lang/Runnable;

    move-result-object v7

    .line 220
    .restart local v7       #cb:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mHandler:Lcom/sec/android/app/camera/GetterHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$700(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/GetterHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 224
    .end local v2           #offset:I
    .end local v4           #rb:Lcom/sec/android/app/camera/RotateBitmap;
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v7           #cb:Ljava/lang/Runnable;
    .end local v9           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v11           #imageNumber:I
    .end local v13           #sizeToUse:I
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mHandler:Lcom/sec/android/app/camera/GetterHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageGetter;->access$700(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/GetterHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$000(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->completedCallback(I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 132
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    monitor-enter v0

    .line 136
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$200(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mDone:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$300(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$400(Lcom/sec/android/app/camera/ImageGetter;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    #getter for: Lcom/sec/android/app/camera/ImageGetter;->mDone:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageGetter;->access$300(Lcom/sec/android/app/camera/ImageGetter;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/camera/ImageGetter;->mIdle:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ImageGetter;->access$502(Lcom/sec/android/app/camera/ImageGetter;Z)Z

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/camera/ImageGetter;->mIdle:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ImageGetter;->access$502(Lcom/sec/android/app/camera/ImageGetter;Z)Z

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->executeRequest()V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    monitor-enter v0

    .line 152
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;->this$0:Lcom/sec/android/app/camera/ImageGetter;

    const/4 v2, -0x1

    #setter for: Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ImageGetter;->access$402(Lcom/sec/android/app/camera/ImageGetter;I)I

    .line 153
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 142
    :catch_0
    move-exception v1

    goto :goto_2
.end method
