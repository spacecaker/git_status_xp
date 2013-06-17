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
    .line 691
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 694
    .local v0, tag:I
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$900(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$1000(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$1000(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->performClick()Z

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #setter for: Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->access$902(Lcom/sec/android/app/camera/widget/TwGridView;I)I

    .line 700
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #setter for: Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->access$702(Lcom/sec/android/app/camera/widget/TwGridView;I)I

    .line 701
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$1100(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$1100(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$1200(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 705
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView$5;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwGridView;->access$900(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v2

    #calls: Lcom/sec/android/app/camera/widget/TwGridView;->updateDescriptionPanel(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/widget/TwGridView;->access$1300(Lcom/sec/android/app/camera/widget/TwGridView;I)V

    .line 707
    :cond_2
    return-void
.end method
