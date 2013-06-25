.class public Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ApplicationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 44
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    .line 45
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 49
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 51
    .local v11, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez p2, :cond_0

    .line 52
    sget-boolean v17, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v17, :cond_7

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030003

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v12, v0

    .line 59
    .local v12, itemview:Lcom/sec/android/app/twlauncher/MenuItemView;
    new-instance v17, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_8

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.android.stk.StkLauncherActivity"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_8

    .line 62
    :cond_1
    const-string v17, "Toolkit SIM"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_1
    const/4 v14, 0x0

    .line 68
    .local v14, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 69
    .local v7, className:Ljava/lang/String;
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 70
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 71
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 74
    :cond_2
    sget-boolean v17, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v17, :cond_4

    .line 75
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.google.android"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.android.vending"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 77
    :cond_3
    const v17, 0x7f020089

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundResource(I)V

    .line 89
    :cond_4
    :goto_2
    const v17, 0x7f06000a

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 90
    .local v9, iconView:Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v17

    sget-object v18, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 91
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move v10, v0

    .line 92
    .local v10, iconWidth:F
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move v8, v0

    .line 94
    .local v8, iconHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 95
    .local v16, viewWidth:F
    move/from16 v15, v16

    .line 97
    .local v15, viewHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090015

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move v4, v0

    .line 99
    .local v4, appIconSize:F
    invoke-virtual {v9}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    .line 100
    .local v13, m:Landroid/graphics/Matrix;
    if-nez v13, :cond_b

    .line 101
    new-instance v13, Landroid/graphics/Matrix;

    .end local v13           #m:Landroid/graphics/Matrix;
    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 102
    .restart local v13       #m:Landroid/graphics/Matrix;
    div-float v17, v4, v10

    div-float v18, v4, v8

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 103
    sub-float v17, v16, v4

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    sub-float v18, v15, v4

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 104
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 111
    .end local v4           #appIconSize:F
    .end local v8           #iconHeight:F
    .end local v10           #iconWidth:F
    .end local v13           #m:Landroid/graphics/Matrix;
    .end local v15           #viewHeight:F
    .end local v16           #viewWidth:F
    :cond_5
    :goto_3
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    move-object/from16 v17, v0

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 114
    sget-boolean v17, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v17, :cond_6

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    move-object/from16 v17, v0

    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 116
    .local v5, b:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_6

    .line 117
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 118
    .local v6, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v6, :cond_6

    .line 119
    invoke-virtual {v12, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v6           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    return-object p2

    .line 55
    .end local v7           #className:Ljava/lang/String;
    .end local v9           #iconView:Landroid/widget/ImageView;
    .end local v12           #itemview:Lcom/sec/android/app/twlauncher/MenuItemView;
    .end local v14           #packageName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030002

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 64
    .restart local v12       #itemview:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_8
    move-object v0, v11

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 79
    .restart local v7       #className:Ljava/lang/String;
    .restart local v14       #packageName:Ljava/lang/String;
    :cond_9
    rem-int/lit8 v17, p1, 0x2

    if-nez v17, :cond_a

    .line 80
    const v17, 0x7f020087

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 82
    :cond_a
    const v17, 0x7f020088

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 106
    .restart local v4       #appIconSize:F
    .restart local v8       #iconHeight:F
    .restart local v9       #iconView:Landroid/widget/ImageView;
    .restart local v10       #iconWidth:F
    .restart local v13       #m:Landroid/graphics/Matrix;
    .restart local v15       #viewHeight:F
    .restart local v16       #viewWidth:F
    :cond_b
    div-float v17, v4, v10

    div-float v18, v4, v8

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 107
    sub-float v17, v16, v4

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    sub-float v18, v15, v4

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_3
.end method
