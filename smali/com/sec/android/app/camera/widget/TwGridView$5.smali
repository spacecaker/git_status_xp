.class Lcom/sec/android/app/camera/widget/TwGridView$5;
.super Ljava/lang/Object;
.source "TwGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mClickPass:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->access$1400(Lcom/sec/android/app/camera/widget/TwGridView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/widget/TwGridView;->mClickPass:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$1402(Lcom/sec/android/app/camera/widget/TwGridView;Z)Z

    .line 671
    :goto_0
    return-void

    .line 663
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 668
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->processScrollUp()V

    goto :goto_0

    .line 665
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->processScrollDown()V

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
