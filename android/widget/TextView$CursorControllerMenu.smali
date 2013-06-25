.class Landroid/widget/TextView$CursorControllerMenu;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorControllerMenu"
.end annotation


# static fields
.field static final DEBUG_CCM:Z


# instance fields
.field public mBtnClipBoard:Landroid/widget/LinearLayout;

.field public mBtnCopy:Landroid/widget/LinearLayout;

.field public mBtnCut:Landroid/widget/LinearLayout;

.field public mBtnPaste:Landroid/widget/LinearLayout;

.field public mBtnSearch:Landroid/widget/LinearLayout;

.field public mBtnSelect:Landroid/widget/LinearLayout;

.field public mBtnSelectAll:Landroid/widget/LinearLayout;

.field public mBtnShare:Landroid/widget/LinearLayout;

.field public mCntMenuItem:I

.field private mContext:Landroid/content/Context;

.field private mControllerHeight:I

.field public mCurrentCountry:Ljava/lang/String;

.field private mCurrentMenuPosition:I

.field private mCursorBottomXPosition:I

.field private mCursorBottomYPosition:I

.field public mCursorControllerMenuArrowDownView:Landroid/view/View;

.field public mCursorControllerMenuArrowUpView:Landroid/view/View;

.field public mCursorControllerMenuView:Landroid/view/View;

.field public mCursorControllerParent:Landroid/widget/TextView;

.field private mCursorPosition:Landroid/graphics/RectF;

.field private mCursorTopXPosition:I

.field private mCursorTopYPosition:I

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsCursorControllerDragging:Z

.field private mLife:Z

.field private mMenuAnimation:Landroid/view/ViewGroup;

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowDown:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowUp:Landroid/widget/PopupWindow;

.field private mSelectedText:Ljava/lang/CharSequence;

.field private mSplitCopy:Landroid/widget/ImageView;

.field private mSplitCut:Landroid/widget/ImageView;

.field private mSplitPaste:Landroid/widget/ImageView;

.field private mSplitSearch:Landroid/widget/ImageView;

.field private mSplitSelect:Landroid/widget/ImageView;

.field private mSplitSelectAll:Landroid/widget/ImageView;

.field private mSplitShare:Landroid/widget/ImageView;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "tv"

    .prologue
    const/16 v6, 0x3ea

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v3, "GT-S5830"

    .line 9486
    iput-object p1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9449
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9461
    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mIsCursorControllerDragging:Z

    .line 9463
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    .line 9464
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9465
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9466
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9467
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9473
    iput-boolean v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    .line 9477
    const/16 v0, 0x270f

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 9487
    iput-object p2, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    .line 9488
    iput-object p3, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    .line 9489
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentCountry:Ljava/lang/String;

    .line 9491
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 9493
    const-string v0, "GT-S5830"

    const-string v0, "GT-S5830"

    invoke-virtual {v3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-S5830"

    const-string v0, "GT-S5830T"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-S5830"

    const-string v0, "GT-S5830G"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-S5830"

    const-string v0, "GT-S5830F"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9494
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090074

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    .line 9499
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090071

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    .line 9500
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090072

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    .line 9502
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    .line 9503
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    .line 9504
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    .line 9505
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    .line 9506
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    .line 9507
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    .line 9508
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    .line 9509
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    .line 9511
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    .line 9512
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    .line 9513
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    .line 9514
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    .line 9515
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    .line 9516
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    .line 9517
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x102018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    .line 9519
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 9520
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowDownView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    .line 9521
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuArrowUpView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    .line 9523
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9524
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9525
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9526
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9528
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9529
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9530
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9531
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9533
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9534
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9535
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9536
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9538
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9539
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9540
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9541
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9542
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9543
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9544
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9545
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9548
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    const v1, 0x1020295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    .line 9551
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x10a004a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    .line 9552
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/widget/TextView$CursorControllerMenu$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TextView$CursorControllerMenu$1;-><init>(Landroid/widget/TextView$CursorControllerMenu;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9561
    return-void

    .line 9496
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090070

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerMenuView:Landroid/view/View;

    goto/16 :goto_0
.end method


# virtual methods
.method public calcMenuWidthHeight()V
    .locals 5

    .prologue
    const/high16 v4, 0x4160

    const v3, 0x4129999a

    .line 9734
    const/16 v0, 0x47

    .line 9736
    .local v0, tmpWidth:I
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    mul-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x13

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9737
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x42bfcccc

    invoke-virtual {p0, v2}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9739
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9740
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9742
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9743
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9744
    return-void
.end method

.method public convertDipToPixel(F)I
    .locals 5
    .parameter "dip"

    .prologue
    .line 9649
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 9650
    .local v0, density:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 9651
    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float p1, v1

    .line 9654
    :cond_0
    float-to-int v1, p1

    return v1
.end method

.method public getCurrentMenuPosition()I
    .locals 1

    .prologue
    .line 10107
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    return v0
.end method

.method public getCursorControllerHeight()I
    .locals 1

    .prologue
    .line 10087
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    return v0
.end method

.method public getLife()Z
    .locals 1

    .prologue
    .line 10099
    iget-boolean v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    return v0
.end method

.method public hideCursorControllerMenu()V
    .locals 1

    .prologue
    .line 10071
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10072
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10074
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10075
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10077
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10078
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10080
    :cond_2
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 10091
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10092
    const/4 v0, 0x1

    .line 10094
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isThereAnyTextInClipboard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9721
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_1

    .line 9722
    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 9723
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9724
    const/4 v1, 0x1

    .line 9729
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :goto_0
    return v1

    .restart local v0       #clip:Landroid/text/ClipboardManager;
    :cond_0
    move v1, v3

    .line 9726
    goto :goto_0

    .end local v0           #clip:Landroid/text/ClipboardManager;
    :cond_1
    move v1, v3

    .line 9729
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x1020029

    .line 9564
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_0

    .line 9566
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020028

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9569
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_1

    .line 9571
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x102001f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9574
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_2

    .line 9576
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020021

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9577
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9580
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_3

    .line 9582
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020020

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9583
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9586
    :cond_3
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_4

    .line 9588
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x1020022

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9589
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9592
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_6

    .line 9594
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9596
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9597
    .local v3, selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9598
    .local v2, selEnd:I
    if-le v3, v2, :cond_5

    .line 9600
    move v4, v3

    .line 9601
    .local v4, tmp:I
    move v3, v2

    .line 9602
    move v2, v4

    .line 9604
    .end local v4           #tmp:I
    :cond_5
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 9606
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9608
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->showCursorControllerSearchDialog(Ljava/lang/String;)V

    .line 9611
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_6
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_8

    .line 9613
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9615
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9616
    .restart local v3       #selStart:I
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9617
    .restart local v2       #selEnd:I
    if-le v3, v2, :cond_7

    .line 9619
    move v4, v3

    .line 9620
    .restart local v4       #tmp:I
    move v3, v2

    .line 9621
    move v2, v4

    .line 9623
    .end local v4           #tmp:I
    :cond_7
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    .line 9625
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9627
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9628
    .local v1, intentShareText:Landroid/content/Intent;
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Landroid/widget/TextView$CursorControllerMenu;->mSelectedText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9629
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9631
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    const v6, 0x1040437

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 9633
    .local v0, intentChooser:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x1000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9635
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9641
    .end local v0           #intentChooser:Landroid/content/Intent;
    .end local v1           #intentShareText:Landroid/content/Intent;
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :cond_8
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_9

    .line 9643
    invoke-virtual {p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9644
    iget-object v5, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    const v6, 0x102018e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 9646
    :cond_9
    return-void

    .line 9636
    .restart local v0       #intentChooser:Landroid/content/Intent;
    .restart local v1       #intentShareText:Landroid/content/Intent;
    .restart local v2       #selEnd:I
    .restart local v3       #selStart:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public setCursorControllerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 10083
    iput p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mControllerHeight:I

    .line 10084
    return-void
.end method

.method public setLife(Z)V
    .locals 0
    .parameter "life"

    .prologue
    .line 10103
    iput-boolean p1, p0, Landroid/widget/TextView$CursorControllerMenu;->mLife:Z

    .line 10104
    return-void
.end method

.method public showCursorControllerMenu()V
    .locals 27

    .prologue
    .line 9750
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->updateButtonVisibility()V

    .line 9751
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->calcMenuWidthHeight()V

    .line 9756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v24, v0

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static/range {v24 .. v24}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v12, 0x20

    .line 9759
    .local v12, mPadding:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 9760
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 9907
    :goto_1
    return-void

    .line 9757
    .end local v12           #mPadding:I
    :cond_0
    const/16 v12, 0x12

    .restart local v12       #mPadding:I
    goto :goto_0

    .line 9764
    :cond_1
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 9767
    .local v8, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v19

    .line 9768
    .local v19, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v18

    .line 9770
    .local v18, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object v2, v8

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9773
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v24

    if-nez v24, :cond_2

    .line 9775
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v19

    move-object v2, v8

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9778
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 9779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object v0, v8

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 9780
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 9781
    .local v21, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    add-float v7, v24, v25

    .line 9784
    .local v7, bottomCenter:F
    const/16 v24, 0x0

    aget v24, v21, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getScrollX()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getScrollY()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9787
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getScrollY()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v23

    .line 9791
    .local v23, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v10

    .line 9794
    .local v10, heightArrowY:I
    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830G"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830F"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 9795
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v24, v24, v25

    add-int/lit8 v13, v24, 0x3

    .line 9796
    .local v13, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    const/16 v25, 0x4

    sub-int v14, v24, v25

    .line 9797
    .local v14, posArrowY:I
    const/16 v11, 0x15

    .line 9798
    .local v11, leftPadding:I
    const/16 v6, 0xc

    .line 9808
    .local v6, arrowPadding:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v24, v0

    mul-int/lit8 v25, v23, 0x3

    sub-int v24, v24, v25

    const/high16 v25, 0x4198

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v25

    sub-int v15, v24, v25

    .line 9809
    .local v15, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v25

    sub-int v24, v24, v25

    add-int/lit8 v16, v24, 0x2

    .line 9810
    .local v16, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v22

    .line 9811
    .local v22, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .line 9813
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 9816
    .local v17, screenWidth:I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 9817
    .local v20, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 9818
    const/16 v24, 0x0

    aget v24, v20, v24

    const/16 v25, 0x0

    aget v25, v21, v25

    sub-int v5, v24, v25

    .line 9823
    .local v5, activityPadding:I
    const/16 v24, 0x32

    move v0, v5

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    .line 9824
    const/4 v5, 0x6

    .line 9828
    :cond_4
    if-nez v5, :cond_b

    .line 9829
    if-gtz v15, :cond_9

    .line 9830
    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    mul-int/lit8 v15, v24, -0x1

    .line 9852
    :cond_5
    :goto_3
    const/16 v24, 0x28

    move/from16 v0, v16

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    .line 9854
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v25

    add-int v24, v24, v25

    add-int v24, v24, v10

    const/16 v25, 0x14

    sub-int v16, v24, v25

    .line 9856
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 9857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9860
    :cond_6
    const/high16 v24, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    sub-int v16, v16, v24

    .line 9862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 9863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v22

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9872
    :goto_4
    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830G"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830F"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 9873
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x15

    sub-int v14, v24, v25

    .line 9879
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 9880
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v13

    move v2, v14

    move/from16 v3, v23

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9905
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mMenuAnimation:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mTrackAnim:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 9802
    .end local v5           #activityPadding:I
    .end local v6           #arrowPadding:I
    .end local v9           #height:I
    .end local v11           #leftPadding:I
    .end local v13           #posArrowX:I
    .end local v14           #posArrowY:I
    .end local v15           #posX:I
    .end local v16           #posY:I
    .end local v17           #screenWidth:I
    .end local v20           #tmpLocOnScr:[I
    .end local v22           #width:I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v13, v24, v25

    .line 9803
    .restart local v13       #posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    add-int/lit8 v14, v24, 0x2

    .line 9804
    .restart local v14       #posArrowY:I
    const/16 v11, 0xf

    .line 9805
    .restart local v11       #leftPadding:I
    const/16 v6, 0xb

    .restart local v6       #arrowPadding:I
    goto/16 :goto_2

    .line 9831
    .restart local v5       #activityPadding:I
    .restart local v9       #height:I
    .restart local v15       #posX:I
    .restart local v16       #posY:I
    .restart local v17       #screenWidth:I
    .restart local v20       #tmpLocOnScr:[I
    .restart local v22       #width:I
    :cond_9
    add-int v24, v15, v22

    move/from16 v0, v24

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 9832
    sub-int v24, v17, v22

    if-gez v24, :cond_a

    .line 9833
    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    mul-int/lit8 v15, v24, -0x1

    goto/16 :goto_3

    .line 9835
    :cond_a
    sub-int v24, v17, v22

    add-int v15, v24, v12

    goto/16 :goto_3

    .line 9841
    :cond_b
    add-int v24, v15, v22

    add-int v24, v24, v5

    move/from16 v0, v24

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 9843
    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    mul-int/lit8 v15, v24, 0x1

    goto/16 :goto_3

    .line 9845
    :cond_c
    sub-int v24, v22, v12

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 9846
    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    mul-int/lit8 v24, v24, -0x1

    sub-int v15, v24, v5

    goto/16 :goto_3

    .line 9848
    :cond_d
    sub-int v24, v22, v12

    sub-int v24, v17, v24

    sub-int v15, v24, v5

    goto/16 :goto_3

    .line 9865
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_4

    .line 9876
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x13

    sub-int v14, v24, v25

    goto/16 :goto_5

    .line 9882
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_6

    .line 9885
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 9886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9889
    :cond_12
    const/high16 v24, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    add-int v16, v16, v24

    .line 9891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 9892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v22

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9897
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 9898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v13

    move v2, v14

    move/from16 v3, v23

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_6

    .line 9894
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_7

    .line 9900
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_6
.end method

.method public updateButtonVisibility()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 9658
    iput v2, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9660
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9661
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9662
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9663
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9664
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9665
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9666
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9667
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnClipBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9669
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9670
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9671
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9672
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9673
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9674
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9675
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9677
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canSelectText()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIsInTextSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9678
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9679
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9680
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9681
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9683
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9684
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9685
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9686
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9718
    :cond_0
    :goto_0
    return-void

    .line 9690
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9691
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9692
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9693
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9696
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9697
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9698
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9699
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    .line 9702
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9703
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9704
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnPaste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9705
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto :goto_0

    .line 9707
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mEnableSelection:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9708
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInputType:I
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)I

    move-result v1

    #calls: Landroid/widget/TextView;->isPasswordInputType(I)Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9709
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnCopy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9710
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9711
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9712
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9713
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mBtnShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9714
    iget v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    goto/16 :goto_0
.end method

.method public updateCurrentMenuPosition()V
    .locals 1

    .prologue
    .line 10111
    iget-object v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 10112
    return-void
.end method

.method public updateCursorControllerMenu()V
    .locals 27

    .prologue
    .line 9912
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCntMenuItem:I

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 9913
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 10066
    :goto_0
    return-void

    .line 9917
    :cond_0
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 9921
    .local v8, cursorPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v24, v0

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static/range {v24 .. v24}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v24

    if-eqz v24, :cond_8

    const/16 v12, 0x20

    .line 9926
    .local v12, mPadding:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v19

    .line 9927
    .local v19, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v18

    .line 9929
    .local v18, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object v2, v8

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9932
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v24

    if-nez v24, :cond_1

    .line 9934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v19

    move-object v2, v8

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 9936
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->IsEndHandleVisible()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCurrentMenuPosition:I

    .line 9938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object v0, v8

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 9939
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 9940
    .local v21, tmpLocOnWin:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    add-float v7, v24, v25

    .line 9943
    .local v7, bottomCenter:F
    const/16 v24, 0x0

    aget v24, v21, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getScrollX()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    .line 9944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getScrollY()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    .line 9946
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopXPosition:I

    .line 9947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorPosition:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v21, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getScrollY()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    .line 9949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v23

    .line 9950
    .local v23, widthArrowX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v10

    .line 9954
    .local v10, heightArrowY:I
    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830G"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830F"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 9955
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v24, v24, v25

    add-int/lit8 v13, v24, 0x3

    .line 9956
    .local v13, posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    const/16 v25, 0x4

    sub-int v14, v24, v25

    .line 9957
    .local v14, posArrowY:I
    const/16 v11, 0x15

    .line 9958
    .local v11, leftPadding:I
    const/16 v6, 0xc

    .line 9967
    .local v6, arrowPadding:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v24, v0

    mul-int/lit8 v25, v23, 0x3

    sub-int v24, v24, v25

    const/high16 v25, 0x4198

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v25

    sub-int v15, v24, v25

    .line 9968
    .local v15, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v25

    sub-int v24, v24, v25

    add-int/lit8 v16, v24, 0x2

    .line 9969
    .local v16, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v22

    .line 9970
    .local v22, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    .line 9972
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 9974
    .local v17, screenWidth:I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 9975
    .local v20, tmpLocOnScr:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 9976
    const/16 v24, 0x0

    aget v24, v20, v24

    const/16 v25, 0x0

    aget v25, v21, v25

    sub-int v5, v24, v25

    .line 9981
    .local v5, activityPadding:I
    const/16 v24, 0x32

    move v0, v5

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    .line 9982
    const/4 v5, 0x6

    .line 9986
    :cond_3
    if-nez v5, :cond_c

    .line 9987
    if-gtz v15, :cond_a

    .line 9988
    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    mul-int/lit8 v15, v24, -0x1

    .line 10011
    :cond_4
    :goto_3
    const/16 v24, 0x28

    move/from16 v0, v16

    move/from16 v1, v24

    if-gt v0, v1, :cond_13

    .line 10013
    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830G"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830F"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 10014
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v25

    add-int v24, v24, v25

    add-int v24, v24, v10

    const/16 v25, 0x15

    sub-int v16, v24, v25

    .line 10021
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 10022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10025
    :cond_6
    const/high16 v24, 0x4040

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    sub-int v16, v16, v24

    .line 10027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 10028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v22

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10035
    :goto_5
    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830G"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string v24, "GT-S5830"

    const-string v25, "GT-S5830F"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 10036
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x14

    sub-int v14, v24, v25

    .line 10042
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 10043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v13

    move v2, v14

    move/from16 v3, v23

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 9922
    .end local v5           #activityPadding:I
    .end local v6           #arrowPadding:I
    .end local v7           #bottomCenter:F
    .end local v9           #height:I
    .end local v10           #heightArrowY:I
    .end local v11           #leftPadding:I
    .end local v12           #mPadding:I
    .end local v13           #posArrowX:I
    .end local v14           #posArrowY:I
    .end local v15           #posX:I
    .end local v16           #posY:I
    .end local v17           #screenWidth:I
    .end local v18           #selEnd:I
    .end local v19           #selStart:I
    .end local v20           #tmpLocOnScr:[I
    .end local v21           #tmpLocOnWin:[I
    .end local v22           #width:I
    .end local v23           #widthArrowX:I
    :cond_8
    const/16 v12, 0x12

    .restart local v12       #mPadding:I
    goto/16 :goto_1

    .line 9961
    .restart local v7       #bottomCenter:F
    .restart local v10       #heightArrowY:I
    .restart local v18       #selEnd:I
    .restart local v19       #selStart:I
    .restart local v21       #tmpLocOnWin:[I
    .restart local v23       #widthArrowX:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomXPosition:I

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v13, v24, v25

    .line 9962
    .restart local v13       #posArrowX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorTopYPosition:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    add-int/lit8 v14, v24, 0x2

    .line 9963
    .restart local v14       #posArrowY:I
    const/16 v11, 0xf

    .line 9964
    .restart local v11       #leftPadding:I
    const/16 v6, 0xb

    .restart local v6       #arrowPadding:I
    goto/16 :goto_2

    .line 9989
    .restart local v5       #activityPadding:I
    .restart local v9       #height:I
    .restart local v15       #posX:I
    .restart local v16       #posY:I
    .restart local v17       #screenWidth:I
    .restart local v20       #tmpLocOnScr:[I
    .restart local v22       #width:I
    :cond_a
    add-int v24, v15, v22

    move/from16 v0, v24

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 9990
    sub-int v24, v17, v22

    if-gez v24, :cond_b

    .line 9991
    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    mul-int/lit8 v15, v24, -0x1

    goto/16 :goto_3

    .line 9993
    :cond_b
    sub-int v24, v17, v22

    add-int v15, v24, v12

    goto/16 :goto_3

    .line 9999
    :cond_c
    add-int v24, v15, v22

    add-int v24, v24, v5

    move/from16 v0, v24

    move/from16 v1, v17

    if-gt v0, v1, :cond_d

    .line 10000
    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    mul-int/lit8 v15, v24, 0x1

    goto/16 :goto_3

    .line 10002
    :cond_d
    sub-int v24, v22, v12

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 10003
    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    mul-int/lit8 v24, v24, -0x1

    sub-int v15, v24, v5

    goto/16 :goto_3

    .line 10005
    :cond_e
    sub-int v24, v22, v12

    sub-int v24, v17, v24

    sub-int v15, v24, v5

    goto/16 :goto_3

    .line 10017
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v25

    add-int v24, v24, v25

    add-int v24, v24, v10

    const/16 v25, 0x14

    sub-int v16, v24, v25

    goto/16 :goto_4

    .line 10030
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_5

    .line 10039
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorBottomYPosition:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$CursorControllerMenu;->getCursorControllerHeight()I

    move-result v25

    add-int v24, v24, v25

    const/16 v25, 0x13

    sub-int v14, v24, v25

    goto/16 :goto_6

    .line 10045
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 10048
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 10049
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10052
    :cond_14
    const/high16 v24, 0x4188

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->convertDipToPixel(F)I

    move-result v24

    add-int v16, v16, v24

    .line 10054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 10055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v22

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10060
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 10061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v13

    move v2, v14

    move/from16 v3, v23

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 10057
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_7

    .line 10063
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$CursorControllerMenu;->mCursorControllerParent:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method
