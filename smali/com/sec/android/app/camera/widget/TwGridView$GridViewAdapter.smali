.class Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwGridView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwGridView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/TwGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 570
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->access$100(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->access$100(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/MenuResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 585
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 591
    new-instance v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$200(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwGridView;->access$300(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I
    invoke-static {v3}, Lcom/sec/android/app/camera/widget/TwGridView;->access$400(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;II)V

    .line 593
    .local v0, item:Lcom/sec/android/app/camera/widget/TwImageButton;
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$500(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 594
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineX:I

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineY:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v3}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineRightMargin:I

    const/16 v4, 0x13

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v5}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v5

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonTextSize:I

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v6}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonWidth:I

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v7}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineX:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v7}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHeight:I

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v8}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineY:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v8}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridTextLineSpacing:I

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/TwImageButton;->addTextLayout(IIIIIIII)V

    .line 603
    :cond_0
    new-instance v10, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonWidth:I

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHeight:I

    invoke-direct {v10, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 605
    .local v10, buttonLayoutParams:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/TwImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonBackgroundNormal:I

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonBackgroundFocus:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    invoke-static {v3}, Lcom/sec/android/app/camera/widget/TwGridView;->access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonBackgroundNormal:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResources(III)V

    .line 608
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$100(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/MenuResourceBundle;

    move-result-object v9

    .line 611
    .local v9, bundle:Lcom/sec/android/app/camera/MenuResourceBundle;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setImageResources(III)V

    .line 614
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 616
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$500(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 617
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v9, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setText(Ljava/lang/String;)V

    .line 619
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 621
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$700(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v9, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 624
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressed()V

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$800(Lcom/sec/android/app/camera/widget/TwGridView;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 628
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 631
    :cond_3
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->removeView(Landroid/view/View;)V

    .line 637
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 647
    .end local p0
    .end local p1
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 639
    .restart local p0
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    check-cast p1, Lcom/sec/android/app/camera/widget/TwImageButton;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->changeSelectedItem(I)V

    goto :goto_0

    .line 644
    .restart local p0
    .restart local p1
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;->this$0:Lcom/sec/android/app/camera/widget/TwGridView;

    #getter for: Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwGridView;->access$900(Lcom/sec/android/app/camera/widget/TwGridView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->changeSelectedItem(I)V

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
