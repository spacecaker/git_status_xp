.class Lcom/sec/android/app/camera/CropImage$8;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImageMatrix:Landroid/graphics/Matrix;

.field mScale:F

.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/camera/CropImage$8;->mScale:F

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CropImage$8;Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage$8;->handleBlinkFace(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/CropImage$8;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage$8;->makeDefault()V

    return-void
.end method

.method private handleBlinkFace(Landroid/graphics/RectF;)V
    .locals 13
    .parameter "rect"

    .prologue
    .line 567
    new-instance v0, Lcom/sec/android/app/camera/HighlightView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$500(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 568
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v9

    .line 570
    .local v9, img:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v9, :cond_0

    .line 571
    invoke-interface {v9}, Lcom/sec/android/app/camera/gallery/IImage;->getWidth()I

    move-result v10

    .line 572
    .local v10, w:I
    invoke-interface {v9}, Lcom/sec/android/app/camera/gallery/IImage;->getHeight()I

    move-result v6

    .line 574
    .local v6, h:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 575
    .local v12, width:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 577
    .local v8, height:I
    int-to-float v1, v12

    int-to-float v2, v10

    div-float v11, v1, v2

    .line 578
    .local v11, w_ratio:F
    int-to-float v1, v8

    int-to-float v2, v6

    div-float v7, v1, v2

    .line 580
    .local v7, h_ratio:F
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBlinkFace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 583
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v11

    iget v4, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v7

    iget v5, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v11

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    .end local v6           #h:I
    mul-float/2addr v6, v7

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 588
    .local v3, blinkRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v4, v4, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    iget-object v5, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/sec/android/app/camera/CropImage;->access$900(Lcom/sec/android/app/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 591
    sget-object v1, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/HighlightView;->setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V

    .line 592
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$500(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CropImageView;->add(Lcom/sec/android/app/camera/HighlightView;)V

    .line 594
    .end local v2           #imageRect:Landroid/graphics/Rect;
    .end local v3           #blinkRect:Landroid/graphics/RectF;
    .end local v7           #h_ratio:F
    .end local v8           #height:I
    .end local v10           #w:I
    .end local v11           #w_ratio:F
    .end local v12           #width:I
    :cond_0
    return-void

    .line 588
    .restart local v2       #imageRect:Landroid/graphics/Rect;
    .restart local v3       #blinkRect:Landroid/graphics/RectF;
    .restart local v7       #h_ratio:F
    .restart local v8       #height:I
    .restart local v10       #w:I
    .restart local v11       #w_ratio:F
    .restart local v12       #width:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 643
    new-instance v0, Lcom/sec/android/app/camera/HighlightView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$500(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 645
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 646
    .local v9, width:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 648
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13, v13, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 651
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 652
    .local v7, cropWidth:I
    move v6, v7

    .line 654
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$900(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$900(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_1

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$900(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 662
    :cond_0
    :goto_0
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 663
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 665
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v5, v10, v7

    int-to-float v5, v5

    add-int v12, v11, v6

    int-to-float v12, v12

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 666
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v4, v4, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    iget-object v5, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/sec/android/app/camera/CropImage;->access$900(Lcom/sec/android/app/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$500(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CropImageView;->add(Lcom/sec/android/app/camera/HighlightView;)V

    .line 669
    return-void

    .line 658
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$900(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_0

    .restart local v3       #cropRect:Landroid/graphics/RectF;
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_2
    move v5, v13

    .line 666
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$500(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage$8;->mImageMatrix:Landroid/graphics/Matrix;

    .line 692
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/sec/android/app/camera/CropImage$8;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/CropImage$8;->mScale:F

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$8;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/CropImage$8$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CropImage$8$1;-><init>(Lcom/sec/android/app/camera/CropImage$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void
.end method
