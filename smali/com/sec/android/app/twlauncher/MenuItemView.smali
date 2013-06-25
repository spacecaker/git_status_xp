.class public Lcom/sec/android/app/twlauncher/MenuItemView;
.super Landroid/widget/LinearLayout;
.source "MenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;
    }
.end annotation


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeRightOffset:I

.field private mBadgeTopOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mFocusMargin:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mFontSizeDefault:I

.field private mFontSizeSmall:I

.field private mIsFocused:Z

.field private mIsPressed:Z

.field private mPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTempRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTempRect2:Landroid/graphics/Rect;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->init()V

    .line 60
    return-void
.end method

.method private drawBadge(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 28
    .parameter "canvas"
    .parameter "view"

    .prologue
    .line 165
    const/4 v5, 0x0

    .line 166
    .local v5, badgeCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 167
    .local v21, tag:Ljava/lang/Object;
    if-eqz v21, :cond_0

    .line 168
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 169
    check-cast v21, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v21           #tag:Ljava/lang/Object;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    move v5, v0

    .line 175
    :cond_0
    :goto_0
    if-gtz v5, :cond_2

    .line 246
    :goto_1
    return-void

    .line 170
    .restart local v21       #tag:Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 171
    check-cast v21, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v21           #tag:Ljava/lang/Object;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    move v5, v0

    goto :goto_0

    .line 177
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 190
    :goto_2
    const/16 v25, 0x64

    move v0, v5

    move/from16 v1, v25

    if-lt v0, v1, :cond_7

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 197
    .local v15, iwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 198
    .local v14, iheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    .line 200
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 201
    .local v20, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    .line 202
    .local v17, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .line 203
    .local v19, paddingRight:I
    sub-int v25, v15, v18

    sub-int v11, v25, v19

    .line 204
    .local v11, defaultContentsWidth:I
    sub-int v25, v14, v20

    sub-int v10, v25, v17

    .line 206
    .local v10, defaultContentsHeight:I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTempRect2:Landroid/graphics/Rect;

    move-object v7, v0

    .line 208
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move-object v1, v6

    move/from16 v2, v26

    move/from16 v3, v27

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 210
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 211
    .local v9, contentsWidth:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 212
    .local v8, contentsHeight:I
    const/4 v13, 0x0

    .line 213
    .local v13, horizontalShift:I
    const/16 v23, 0x0

    .line 214
    .local v23, verticalShift:I
    if-ge v9, v11, :cond_3

    .line 215
    sub-int v25, v11, v9

    div-int/lit8 v13, v25, 0x2

    .line 216
    move v9, v11

    .line 218
    :cond_3
    if-ge v8, v10, :cond_4

    .line 219
    sub-int v25, v10, v8

    div-int/lit8 v23, v25, 0x2

    .line 220
    move v8, v10

    .line 223
    :cond_4
    add-int v25, v9, v18

    add-int v24, v25, v19

    .line 224
    .local v24, width:I
    add-int v25, v8, v20

    add-int v12, v25, v17

    .line 226
    .local v12, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    move/from16 v26, v0

    add-int v22, v25, v26

    .line 227
    .local v22, top:I
    const/16 v16, 0x0

    .line 229
    .local v16, left:I
    const/16 v25, 0x64

    move v0, v5

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeRightOffset:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sub-int v16, v25, v24

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    add-int v26, v16, v24

    add-int v27, v22, v12

    move-object/from16 v0, v25

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v25, v13, v25

    add-int v25, v25, v16

    add-int v25, v25, v18

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v26, v23, v26

    add-int v26, v26, v22

    add-int v26, v26, v20

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 181
    .end local v6           #badgeText:Ljava/lang/String;
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v8           #contentsHeight:I
    .end local v9           #contentsWidth:I
    .end local v10           #defaultContentsHeight:I
    .end local v11           #defaultContentsWidth:I
    .end local v12           #height:I
    .end local v13           #horizontalShift:I
    .end local v14           #iheight:I
    .end local v15           #iwidth:I
    .end local v16           #left:I
    .end local v17           #paddingBottom:I
    .end local v18           #paddingLeft:I
    .end local v19           #paddingRight:I
    .end local v20           #paddingTop:I
    .end local v22           #top:I
    .end local v23           #verticalShift:I
    .end local v24           #width:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_2

    .line 193
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_3

    .line 234
    .restart local v6       #badgeText:Ljava/lang/String;
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v8       #contentsHeight:I
    .restart local v9       #contentsWidth:I
    .restart local v10       #defaultContentsHeight:I
    .restart local v11       #defaultContentsWidth:I
    .restart local v12       #height:I
    .restart local v13       #horizontalShift:I
    .restart local v14       #iheight:I
    .restart local v15       #iwidth:I
    .restart local v16       #left:I
    .restart local v17       #paddingBottom:I
    .restart local v18       #paddingLeft:I
    .restart local v19       #paddingRight:I
    .restart local v20       #paddingTop:I
    .restart local v22       #top:I
    .restart local v23       #verticalShift:I
    .restart local v24       #width:I
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeRightOffset:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sub-int v16, v25, v15

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    add-int v26, v16, v15

    add-int v27, v22, v14

    move-object/from16 v0, v25

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    if-le v9, v11, :cond_5

    .line 239
    sub-int v25, v11, v9

    div-int/lit8 v13, v25, 0x2

    goto/16 :goto_4
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, res:Landroid/content/res/Resources;
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTopOffset:I

    .line 70
    :goto_0
    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 72
    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_1

    .line 75
    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    :goto_1
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x7f00

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 80
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_2

    .line 81
    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    .line 82
    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeRightOffset:I

    .line 88
    :goto_2
    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    .line 89
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f070012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 99
    :goto_3
    return-void

    .line 68
    :cond_0
    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTopOffset:I

    goto :goto_0

    .line 77
    :cond_1
    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 84
    :cond_2
    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    .line 85
    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeRightOffset:I

    goto :goto_2

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f070010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3
.end method


# virtual methods
.method applyRotation(FF)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 315
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->applyRotation(FFJ)V

    .line 316
    return-void
.end method

.method applyRotation(FFJ)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "delay"

    .prologue
    const/high16 v2, 0x4000

    const/4 v6, 0x1

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 321
    .local v3, centerX:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 325
    .local v4, centerY:F
    new-instance v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 327
    .local v0, rotation:Lcom/sec/android/app/twlauncher/Rotate3dAnimation;
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotateAxis(I)V

    .line 328
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setDuration(J)V

    .line 329
    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setStartOffset(J)V

    .line 330
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setFillAfter(Z)V

    .line 331
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 335
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 293
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 295
    .local v0, p:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;

    if-eqz v1, :cond_0

    .line 296
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;

    .end local v0           #p:Landroid/view/ViewParent;
    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;->drawChildUninstallableMarker(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 299
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 249
    instance-of v7, p2, Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    .line 250
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-eqz v7, :cond_4

    .line 251
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 252
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 253
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 255
    :cond_0
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 258
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 260
    .local v6, ret:Z
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 261
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 262
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawBadge(Landroid/graphics/Canvas;Landroid/view/View;)V

    move v7, v6

    .line 284
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v6           #ret:Z
    :goto_0
    return v7

    .line 265
    :cond_4
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v7, :cond_5

    .line 266
    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 267
    .local v4, offset:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    .line 268
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 272
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 273
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 275
    .restart local v6       #ret:Z
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawBadge(Landroid/graphics/Canvas;Landroid/view/View;)V

    move v7, v6

    .line 277
    goto :goto_0

    .line 279
    .end local v4           #offset:I
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v6           #ret:Z
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 280
    .restart local v6       #ret:Z
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawBadge(Landroid/graphics/Canvas;Landroid/view/View;)V

    move v7, v6

    .line 281
    goto :goto_0

    .line 284
    .end local v6           #ret:Z
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getDrawableState()[I

    move-result-object v4

    .line 137
    .local v4, state:[I
    const v5, 0x7f06000a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 138
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 143
    :cond_0
    array-length v0, v4

    .line 144
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 145
    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_2

    .line 146
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 149
    :cond_2
    aget v5, v4, v2

    const v6, 0x101009c

    if-ne v5, v6, :cond_3

    .line 150
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 151
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    goto :goto_1

    .line 144
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v5, :cond_1

    .line 158
    :cond_5
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 159
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 303
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getChildCount()I

    move-result v0

    .line 305
    .local v0, count:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTopOffset:I

    .line 306
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 307
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 308
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 309
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1           #i:I
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 123
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_0

    .line 124
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 113
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 102
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 103
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 107
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
