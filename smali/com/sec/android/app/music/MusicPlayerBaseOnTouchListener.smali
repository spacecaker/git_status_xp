.class public Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;
.super Ljava/lang/Object;
.source "MusicPlayerBaseOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandle:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;

.field private mPosX:F


# direct methods
.method public constructor <init>(Landroid/view/GestureDetector;)V
    .locals 1
    .parameter "gestureDetector"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->mHandle:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;

    .line 22
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 23
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    move v0, v4

    .line 34
    .local v0, eventOnView:Z
    :goto_0
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicPlayerBaseOnTouchListener onTouch :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->mPosX:F

    .line 47
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 31
    .end local v0           #eventOnView:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 40
    .restart local v0       #eventOnView:Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->mHandle:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->mPosX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41a0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->mHandle:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;

    invoke-interface {v1}, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;->doHandle()V

    goto :goto_1
.end method

.method public setHandler(Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener;->mHandle:Lcom/sec/android/app/music/MusicPlayerBaseOnTouchListener$TouchHandler;

    .line 27
    return-void
.end method
