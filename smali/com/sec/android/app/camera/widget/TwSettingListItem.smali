.class public Lcom/sec/android/app/camera/widget/TwSettingListItem;
.super Landroid/widget/RelativeLayout;
.source "TwSettingListItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mButtonText:Landroid/widget/TextView;

.field private mButtonTextStringIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonType:I

.field private mHelpTextResourceId:I

.field private mLargeFontSize:F

.field private mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

.field private mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/HashMap;Landroid/view/View$OnClickListener;Lcom/sec/android/app/camera/widget/TwSettingList;)V
    .locals 1
    .parameter "context"
    .parameter "index"
    .parameter
    .parameter "onClickListener"
    .parameter "settingList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SettingsMenuResourceBundle;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/sec/android/app/camera/widget/TwSettingList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, menuResourceBundle:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/SettingsMenuResourceBundle;>;"
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonTextStringIds:Ljava/util/Map;

    .line 58
    iput-object p5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->init(Landroid/content/Context;ILjava/util/HashMap;Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method private init(Landroid/content/Context;ILjava/util/HashMap;Landroid/view/View$OnClickListener;)V
    .locals 10
    .parameter "context"
    .parameter "index"
    .parameter
    .parameter "onClickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/SettingsMenuResourceBundle;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, menuResourceBundle:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/SettingsMenuResourceBundle;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    .line 66
    .local v0, bundle:Lcom/sec/android/app/camera/SettingsMenuResourceBundle;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->getResourceID(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonType:I

    .line 67
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->getResourceID(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mHelpTextResourceId:I

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mLargeFontSize:F

    .line 73
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v4, titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemTitleTextLeftMargin:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 76
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemTitleTextRightMargin:I

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 77
    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 78
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    .line 79
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->getResourceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v6, v6, Lcom/sec/android/app/camera/widget/TwSettingList;->mTitleTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mLargeFontSize:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .local v1, buttonLayout:Landroid/widget/RelativeLayout;
    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 96
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonWidth:I

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v6, v6, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonHeight:I

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v2, buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonLeftMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 99
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonTopMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 100
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v5, Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mContext:Landroid/content/Context;

    const v7, 0x7f0201ff

    const v8, 0x7f020200

    const v9, 0x7f0201fe

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;III)V

    iput-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 107
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v5, p4}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    .line 113
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mLargeFontSize:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v6, v6, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v9, v9, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemButtonTextBottomPadding:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonTextStringIds:Ljava/util/Map;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->getStringResources(Ljava/util/Map;)V

    .line 123
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v3, textLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemButtonTextLeftMargin:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v7, v7, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemButtonTextRightMargin:I

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .end local v3           #textLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 134
    .end local v2           #buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonWidth:I

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v6, v6, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonHeight:I

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .restart local v2       #buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonLeftMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 137
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonTopMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 138
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v5, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mContext:Landroid/content/Context;

    const v7, 0x7f02004f

    const v8, 0x7f02004e

    const v9, 0x7f02004d

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/app/camera/widget/TwSelectButton;-><init>(Landroid/content/Context;III)V

    iput-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 142
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {v5, p4}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getButton()Lcom/sec/android/app/camera/widget/TwImageButton;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    goto :goto_0
.end method

.method public getHelpString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mHelpTextResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "event"

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonText(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonTextStringIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonTextStringIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public setRadioButtonState(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    .line 157
    return-void
.end method
