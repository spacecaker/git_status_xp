.class Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/GestureCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GesturesProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/GestureCreateActivity;


# direct methods
.method private constructor <init>(Lcom/lidroid/parts/GestureCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/parts/GestureCreateActivity;Lcom/lidroid/parts/GestureCreateActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;-><init>(Lcom/lidroid/parts/GestureCreateActivity;)V

    return-void
.end method


# virtual methods
.method public onGesture(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 206
    return-void
.end method

.method public onGestureCancelled(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 223
    return-void
.end method

.method public onGestureEnded(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "overlay"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    invoke-virtual {p1}, Landroid/gesture/GestureOverlayView;->getGesture()Landroid/gesture/Gesture;

    move-result-object v1

    #setter for: Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0, v1}, Lcom/lidroid/parts/GestureCreateActivity;->access$102(Lcom/lidroid/parts/GestureCreateActivity;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 210
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    #getter for: Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0}, Lcom/lidroid/parts/GestureCreateActivity;->access$100(Lcom/lidroid/parts/GestureCreateActivity;)Landroid/gesture/Gesture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/gesture/Gesture;->getLength()F

    move-result v0

    const/high16 v1, 0x42f0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 211
    invoke-virtual {p1, v2}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    iget-object v1, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    #getter for: Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v1}, Lcom/lidroid/parts/GestureCreateActivity;->access$100(Lcom/lidroid/parts/GestureCreateActivity;)Landroid/gesture/Gesture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/parts/GestureCreateActivity;->isThereASimilarGesture(Landroid/gesture/Gesture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    const v1, 0x7f080045

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    #getter for: Lcom/lidroid/parts/GestureCreateActivity;->mDoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/lidroid/parts/GestureCreateActivity;->access$200(Lcom/lidroid/parts/GestureCreateActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    return-void
.end method

.method public onGestureStarted(Landroid/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "overlay"
    .parameter "event"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    #getter for: Lcom/lidroid/parts/GestureCreateActivity;->mDoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/lidroid/parts/GestureCreateActivity;->access$200(Lcom/lidroid/parts/GestureCreateActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$GesturesProcessor;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lidroid/parts/GestureCreateActivity;->mGesture:Landroid/gesture/Gesture;
    invoke-static {v0, v1}, Lcom/lidroid/parts/GestureCreateActivity;->access$102(Lcom/lidroid/parts/GestureCreateActivity;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 203
    return-void
.end method
