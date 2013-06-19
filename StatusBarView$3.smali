.class Lcom/android/systemui/statusbar/StatusBarView$3;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    const/16 v1, 0x52

    #calls: Lcom/android/systemui/statusbar/StatusBarView;->simulateKeypress(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->access$2(Lcom/android/systemui/statusbar/StatusBarView;I)V

    .line 205
    return-void
.end method
