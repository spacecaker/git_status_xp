.class Lcom/sec/android/app/camera/ImageViewTouch2;
.super Lcom/sec/android/app/camera/ImageViewTouchBase;
.source "ReviewImage.java"


# instance fields
.field private mActionCode:I

.field private mChkFirstMultiTouch:Z

.field private mEnableTrackballScroll:Z

.field private mFirstTouchPosX:F

.field private mFirstTouchPosY:F

.field private mMultiTouchCenterPosX:F

.field private mMultiTouchCenterPosY:F

.field private mNextChangePositionTime:J

.field private mPinchToZoomStarted:Z

.field private mPrevTouchPosX:F

.field private mPrevTouchPosY:F

.field private mPrevTouchTime:J

.field private mPreviousDistance:D

.field private mProcessTouch:Z

.field private mTouchPointerCnt:I

.field private mTouchPosX:I

.field private mTouchPosY:I

.field private final mViewImage:Lcom/sec/android/app/camera/ReviewImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPinchToZoomStarted:Z

    .line 892
    check-cast p1, Lcom/sec/android/app/camera/ReviewImage;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    .line 893
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 896
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPinchToZoomStarted:Z

    .line 897
    check-cast p1, Lcom/sec/android/app/camera/ReviewImage;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    .line 898
    return-void
.end method

.method private touchBegan(II)V
    .locals 4
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 915
    const-string v0, "ImageViewTouch2"

    const-string v1, "touchBegan"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchPosX:F

    .line 918
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchPosY:F

    .line 919
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mFirstTouchPosX:F

    .line 920
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mFirstTouchPosY:F

    .line 921
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mProcessTouch:Z

    .line 924
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPreviousDistance:D

    .line 925
    iput v2, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mMultiTouchCenterPosX:F

    .line 926
    iput v2, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mMultiTouchCenterPosY:F

    .line 927
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mChkFirstMultiTouch:Z

    .line 929
    return-void
.end method

.method private touchEnded(IIF)V
    .locals 12
    .parameter "posX"
    .parameter "posY"
    .parameter "timeElapsedx"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "ImageViewTouch2"

    .line 954
    const-string v5, "ImageViewTouch2"

    const-string v5, "touchEnded"

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v5, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget v0, v5, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 957
    .local v0, current:I
    const/4 v4, -0x2

    .line 958
    .local v4, nextImagePos:I
    const/16 v3, 0xa

    .line 961
    .local v3, maxPixelsBeforeSwitch:I
    int-to-float v5, p1

    iget v6, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mFirstTouchPosX:F

    sub-float v1, v5, v6

    .line 962
    .local v1, deltaX:F
    int-to-float v5, p2

    iget v6, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mFirstTouchPosY:F

    sub-float v2, v5, v6

    .line 963
    .local v2, deltaY:F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_0

    .line 966
    :cond_0
    const-string v5, "ImageViewTouch2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delta ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    int-to-float v5, v3

    cmpl-float v5, v1, v5

    if-lez v5, :cond_5

    .line 969
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_3

    .line 970
    add-int/lit8 v4, v0, 0x1

    .line 984
    :cond_1
    :goto_0
    const-string v5, "ImageViewTouch2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nextImagePos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    if-ltz v4, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v5, v5, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 987
    iget-object v5, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    monitor-enter v5

    .line 988
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 989
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 994
    :cond_2
    :goto_1
    int-to-float v5, p1

    iput v5, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchPosX:F

    .line 995
    int-to-float v5, p2

    iput v5, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchPosY:F

    .line 996
    iput-boolean v10, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mProcessTouch:Z

    .line 997
    return-void

    .line 972
    :cond_3
    const/high16 v5, -0x3e60

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/ImageViewTouch2;->panBy(FF)V

    .line 973
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 984
    :catchall_0
    move-exception v5

    const-string v6, "ImageViewTouch2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextImagePos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "current = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    if-ltz v4, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v6, v6, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v6}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 987
    iget-object v6, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    monitor-enter v6

    .line 988
    :try_start_3
    iget-object v7, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 989
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 991
    :cond_4
    :goto_2
    throw v5

    .line 975
    :cond_5
    neg-int v5, v3

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    .line 976
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F

    move-result v5

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_6

    .line 977
    sub-int v4, v0, v8

    goto/16 :goto_0

    .line 979
    :cond_6
    const/high16 v5, 0x41a0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/ImageViewTouch2;->panBy(FF)V

    .line 980
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 989
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 990
    :cond_7
    const/4 v5, -0x2

    if-eq v4, v5, :cond_2

    .line 991
    invoke-virtual {p0, v8, v8}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    goto :goto_1

    .line 989
    :catchall_2
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 990
    :cond_8
    const/4 v6, -0x2

    if-eq v4, v6, :cond_4

    .line 991
    invoke-virtual {p0, v8, v8}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    goto :goto_2
.end method

.method private touchMoved(IIF)V
    .locals 5
    .parameter "posX"
    .parameter "posY"
    .parameter "timeElapsedx"

    .prologue
    const/high16 v4, 0x4120

    .line 932
    const-string v2, "ImageViewTouch2"

    const-string v3, "touchMoved"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-boolean v2, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mProcessTouch:Z

    if-eqz v2, :cond_1

    .line 934
    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchPosX:F

    sub-float/2addr v2, v3

    neg-float v0, v2

    .line 938
    .local v0, deltaX:F
    int-to-float v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchPosY:F

    sub-float/2addr v2, v3

    neg-float v1, v2

    .line 939
    .local v1, deltaY:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    .line 942
    :cond_0
    int-to-float v2, p1

    iput v2, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchPosX:F

    .line 943
    int-to-float v2, p2

    iput v2, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchPosY:F

    .line 946
    int-to-float v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mFirstTouchPosX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 951
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x1

    .line 1001
    const-string v3, "ImageViewTouch2"

    const-string v4, "onDown"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    if-eqz v3, :cond_0

    move v3, v5

    .line 1079
    :goto_0
    return v3

    .line 1005
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mEnableTrackballScroll:Z

    if-nez v3, :cond_1

    .line 1006
    const/16 v3, 0x13

    if-lt p1, v3, :cond_1

    const/16 v3, 0x16

    if-gt p1, v3, :cond_1

    .line 1008
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget v0, v3, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 1014
    .local v0, current:I
    const/4 v2, -0x2

    .line 1016
    .local v2, nextImagePos:I
    sparse-switch p1, :sswitch_data_0

    .line 1065
    :cond_2
    :goto_1
    if-ltz v2, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 1067
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    monitor-enter v3

    .line 1068
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 1069
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1075
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x52

    if-ne p1, v3, :cond_11

    move v3, v7

    .line 1076
    goto :goto_0

    .line 1018
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ReviewImage;->isPickIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1019
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget v4, v4, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v1

    .line 1021
    .local v1, img:Lcom/sec/android/app/camera/gallery/IImage;
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/ReviewImage;->setResult(ILandroid/content/Intent;)V

    .line 1023
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ReviewImage;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1065
    .end local v1           #img:Lcom/sec/android/app/camera/gallery/IImage;
    :catchall_0
    move-exception v3

    if-ltz v2, :cond_10

    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v4, v4, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 1067
    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    monitor-enter v4

    .line 1068
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 1069
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1071
    :cond_4
    :goto_3
    throw v3

    .line 1028
    :sswitch_1
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mNextChangePositionTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    .line 1030
    sub-int v2, v0, v7

    .line 1031
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mNextChangePositionTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1065
    :goto_4
    if-ltz v2, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1067
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    monitor-enter v3

    .line 1068
    :try_start_4
    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 1069
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    :goto_5
    move v3, v7

    .line 1071
    goto/16 :goto_0

    .line 1033
    :cond_6
    const/high16 v3, 0x41a0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->panBy(FF)V

    .line 1034
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1069
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 1070
    :cond_7
    if-eq v2, v8, :cond_5

    .line 1071
    invoke-virtual {p0, v7, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    goto :goto_5

    .line 1039
    :sswitch_2
    :try_start_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mNextChangePositionTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_9

    .line 1041
    add-int/lit8 v2, v0, 0x1

    .line 1042
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mNextChangePositionTime:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1065
    :goto_6
    if-ltz v2, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 1067
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    monitor-enter v3

    .line 1068
    :try_start_8
    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 1069
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_8
    :goto_7
    move v3, v7

    .line 1071
    goto/16 :goto_0

    .line 1044
    :cond_9
    const/high16 v3, -0x3e60

    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->panBy(FF)V

    .line 1045
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 1069
    :catchall_2
    move-exception v4

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v4

    .line 1070
    :cond_a
    if-eq v2, v8, :cond_8

    .line 1071
    invoke-virtual {p0, v7, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    goto :goto_7

    .line 1050
    :sswitch_3
    const/4 v3, 0x0

    const/high16 v4, 0x41a0

    :try_start_b
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->panBy(FF)V

    .line 1051
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1065
    if-ltz v2, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1067
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    monitor-enter v3

    .line 1068
    :try_start_c
    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 1069
    monitor-exit v3

    :cond_b
    :goto_8
    move v3, v7

    .line 1071
    goto/16 :goto_0

    .line 1069
    :catchall_3
    move-exception v4

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v4

    .line 1070
    :cond_c
    if-eq v2, v8, :cond_b

    .line 1071
    invoke-virtual {p0, v7, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    goto :goto_8

    .line 1055
    :sswitch_4
    const/4 v3, 0x0

    const/high16 v4, -0x3e60

    :try_start_d
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->panBy(FF)V

    .line 1056
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1065
    if-ltz v2, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 1067
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    monitor-enter v3

    .line 1068
    :try_start_e
    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 1069
    monitor-exit v3

    :cond_d
    :goto_9
    move v3, v7

    .line 1071
    goto/16 :goto_0

    .line 1069
    :catchall_4
    move-exception v4

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v4

    .line 1070
    :cond_e
    if-eq v2, v8, :cond_d

    .line 1071
    invoke-virtual {p0, v7, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    goto :goto_9

    .line 1060
    :sswitch_5
    :try_start_f
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v4, v4, Lcom/sec/android/app/camera/ReviewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/MenuHelper;->deletePhoto(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 1069
    :catchall_5
    move-exception v4

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v4

    .line 1070
    :cond_f
    if-eq v2, v8, :cond_3

    .line 1071
    invoke-virtual {p0, v7, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    goto/16 :goto_2

    .line 1069
    :catchall_6
    move-exception v3

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v3

    .line 1070
    :cond_10
    if-eq v2, v8, :cond_4

    .line 1071
    invoke-virtual {p0, v7, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    goto/16 :goto_3

    .line 1079
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 1016
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x43 -> :sswitch_5
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v15, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosX:I

    .line 1086
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosY:I

    .line 1087
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mActionCode:I

    .line 1089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1090
    .local v7, timestamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchTime:J

    move-wide v15, v0

    sub-long v4, v7, v15

    .line 1091
    .local v4, delta:J
    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchTime:J

    .line 1093
    long-to-float v6, v4

    .line 1094
    .local v6, timeElapsed:F
    const v15, 0x3a83126f

    mul-float/2addr v6, v15

    .line 1096
    const-wide/16 v11, 0x0

    .local v11, tmpXGap:D
    const-wide/16 v13, 0x0

    .line 1097
    .local v13, tmpYGap:D
    const-wide/16 v9, 0x0

    .line 1099
    .local v9, tmpDistance:D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPointerCnt:I

    .line 1100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPointerCnt:I

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 1101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mActionCode:I

    move v15, v0

    and-int/lit16 v15, v15, 0xff

    packed-switch v15, :pswitch_data_0

    .line 1161
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPinchToZoomStarted:Z

    move v15, v0

    if-eqz v15, :cond_7

    .line 1162
    const/4 v15, 0x1

    .line 1165
    :goto_1
    return v15

    .line 1103
    :pswitch_1
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mChkFirstMultiTouch:Z

    goto :goto_0

    .line 1106
    :pswitch_2
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v11, v15

    .line 1107
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v13, v15

    .line 1108
    const-wide/high16 v15, 0x4000

    move-wide v0, v11

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const-wide/high16 v17, 0x4000

    move-wide v0, v13

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/ImageViewTouch2;->mPreviousDistance:D

    goto :goto_0

    .line 1111
    :pswitch_3
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mPinchToZoomStarted:Z

    .line 1113
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v11, v15

    .line 1114
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v13, v15

    .line 1115
    const-wide/high16 v15, 0x4000

    move-wide v0, v11

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const-wide/high16 v17, 0x4000

    move-wide v0, v13

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 1117
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mChkFirstMultiTouch:Z

    move v15, v0

    if-eqz v15, :cond_1

    .line 1118
    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/ImageViewTouch2;->mPreviousDistance:D

    .line 1119
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mChkFirstMultiTouch:Z

    .line 1122
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    add-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mMultiTouchCenterPosX:F

    .line 1123
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    add-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mMultiTouchCenterPosY:F

    .line 1125
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPreviousDistance:D

    move-wide v15, v0

    const-wide/high16 v17, 0x4024

    add-double v15, v15, v17

    cmpl-double v15, v9, v15

    if-lez v15, :cond_3

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sec/android/app/camera/ReviewImage;->getImageView()Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v15

    const v16, 0x3f8ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mMultiTouchCenterPosX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mMultiTouchCenterPosY:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/sec/android/app/camera/ImageViewTouch2;->zoomIn(FFF)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 1133
    :cond_2
    :goto_2
    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/ImageViewTouch2;->mPreviousDistance:D

    goto/16 :goto_0

    .line 1128
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPreviousDistance:D

    move-wide v15, v0

    const-wide/high16 v17, 0x4024

    sub-double v15, v15, v17

    cmpg-double v15, v9, v15

    if-gez v15, :cond_2

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sec/android/app/camera/ReviewImage;->getImageView()Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v15

    const v16, 0x3f8f5c29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mMultiTouchCenterPosX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mMultiTouchCenterPosY:F

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/sec/android/app/camera/ImageViewTouch2;->zoomOut(FFF)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mViewImage:Lcom/sec/android/app/camera/ReviewImage;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    goto :goto_2

    .line 1137
    :cond_4
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mChkFirstMultiTouch:Z

    .line 1139
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mPinchToZoomStarted:Z

    move v15, v0

    if-nez v15, :cond_6

    .line 1140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mActionCode:I

    move v15, v0

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_0

    .line 1148
    :pswitch_4
    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/ImageViewTouch2;->mPrevTouchTime:J

    .line 1149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosX:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/ImageViewTouch2;->touchBegan(II)V

    goto/16 :goto_0

    .line 1142
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mProcessTouch:Z

    move v15, v0

    if-nez v15, :cond_5

    .line 1143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosX:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/ImageViewTouch2;->touchBegan(II)V

    .line 1145
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosX:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/ImageViewTouch2;->touchEnded(IIF)V

    goto/16 :goto_0

    .line 1152
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosX:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mTouchPosY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/ImageViewTouch2;->touchMoved(IIF)V

    goto/16 :goto_0

    .line 1156
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mActionCode:I

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 1157
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/ImageViewTouch2;->mPinchToZoomStarted:Z

    goto/16 :goto_0

    .line 1165
    :cond_7
    invoke-super/range {p0 .. p1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    goto/16 :goto_1

    .line 1101
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1140
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected postTranslateCenter(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v0, 0x1

    .line 905
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 906
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->center(ZZ)V

    .line 907
    return-void
.end method

.method public setEnableTrackballScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ImageViewTouch2;->mEnableTrackballScroll:Z

    .line 902
    return-void
.end method
