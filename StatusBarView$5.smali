.class Lcom/android/systemui/statusbar/StatusBarView$5;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    sget v1, Lcom/android/systemui/statusbar/StatusBarView;->KEYCODE_VIRTUAL_BACK_LONG:I

    #calls: Lcom/android/systemui/statusbar/StatusBarView;->simulateKeypress(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->access$2(Lcom/android/systemui/statusbar/StatusBarView;I)V

    .line 222
    const/4 v0, 0x1

    return v0
.end method
