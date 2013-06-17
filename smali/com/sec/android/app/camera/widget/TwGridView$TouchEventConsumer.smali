.class Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;
.super Ljava/lang/Object;
.source "TwGridView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwGridView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/widget/TwGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/widget/TwGridView;Lcom/sec/android/app/camera/widget/TwGridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method
