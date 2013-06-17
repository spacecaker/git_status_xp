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
    .local p3, menuResourceBundle:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/SettingsMenuResourceBundle;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;

    .line 66
    .local v0, bundle:Lcom/sec/android/app/camera/SettingsMenuResourceBundle;
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->getResourceID(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonType:I

    .line 67
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->getResourceID(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mHelpTextResourceId:I

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mLargeFontSize:F

    .line 73
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v3, titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemTitleTextLeftMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 76
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 77
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    .line 78
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->getResourceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mTitleTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mLargeFontSize:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, buttonLayout:Landroid/widget/RelativeLayout;
    iget v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonType:I

    if-ne v4, v7, :cond_0

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonWidth:I

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonHeight:I

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v2, buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonLeftMargin:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 98
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemNormalButtonTopMargin:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 99
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v4, Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mContext:Landroid/content/Context;

    const v6, 0x7f0201e3

    const v7, 0x7f0201e4

    const v8, 0x7f0201e2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sec/android/app/camera/widget/TwImageButton;-><init>(Landroid/content/Context;III)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 106
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v4, p4}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    .line 112
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mLargeFontSize:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonTextStringIds:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/SettingsMenuResourceBundle;->getStringResources(Ljava/util/Map;)V

    .line 120
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :goto_0
    return-void

    .line 127
    .end local v2           #buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonWidth:I

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonHeight:I

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .restart local v2       #buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonLeftMargin:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 130
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwSettingList;->mListItemRadioButtonTopMargin:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 131
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v4, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mContext:Landroid/content/Context;

    const v6, 0x7f020054

    const v7, 0x7f020053

    const v8, 0x7f020052

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sec/android/app/camera/widget/TwSelectButton;-><init>(Landroid/content/Context;III)V

    iput-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 135
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {v4, p4}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getButton()Lcom/sec/android/app/camera/widget/TwImageButton;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mNormalButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    goto :goto_0
.end method

.method public getHelpString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
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
    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwSettingList;->mButtonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 165
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
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mButtonTextStringIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
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

    .line 146
    :cond_0
    return-void
.end method

.method public setRadioButtonState(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;->mRadioButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->setSelected(Z)V

    .line 150
    return-void
.end method
