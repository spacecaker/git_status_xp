.class final Lcom/sec/android/app/twlauncher/LauncherConfig;
.super Ljava/lang/Object;
.source "LauncherConfig.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlphabeticalArrangement(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "alphabetical_arrangement"

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getColumnNo(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "column_no"

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static getDefaultScreenCount(Landroid/content/Context;)I
    .locals 14
    .parameter "context"

    .prologue
    const/4 v11, 0x2

    const-string v13, "Launcher.LauncherConfig"

    const-string v12, "Got exception parsing config."

    .line 193
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v8, values:Landroid/content/ContentValues;
    const/4 v2, 0x7

    .line 197
    .local v2, defaultScreenCount:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 198
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 199
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 201
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 205
    .local v3, depth:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    .line 207
    if-ne v7, v11, :cond_0

    .line 211
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Launcher:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 214
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 215
    const-string v9, "launcher"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 216
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 219
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v3           #depth:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #type:I
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 220
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v13, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return v2

    .line 221
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 222
    .local v4, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v13, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getItemNoOfPage(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "item_no_page"

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const v0, 0xb

    goto :goto_0
.end method

.method static getProductModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const-string v13, "Launcher.LauncherConfig"

    const-string v12, "Got exception parsing config."

    .line 376
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v8, values:Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 380
    .local v6, productModel:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 381
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 382
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 384
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 388
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    if-eq v7, v11, :cond_2

    .line 390
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 394
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Product:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 397
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 398
    const-string v9, "product"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 399
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 402
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #type:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 403
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v13, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    const-string v9, ""

    :goto_2
    return-object v9

    .line 404
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 405
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v13, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    move-object v9, v6

    .line 408
    goto :goto_2
.end method

.method static getProductModelFamily(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    const-string v12, "Launcher.LauncherConfig"

    const-string v11, "Got exception parsing config."

    .line 340
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v8, values:Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 344
    .local v6, productModelFamily:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 345
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 346
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 348
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 352
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    .line 354
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 358
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Product:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 361
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 362
    const-string v9, "product"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 363
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 366
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #type:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 367
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    const-string v9, ""

    :goto_2
    return-object v9

    .line 368
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 369
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    move-object v9, v6

    .line 372
    goto :goto_2
.end method

.method static getScreenCount(Landroid/content/Context;)I
    .locals 14
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const-string v13, "Launcher.LauncherConfig"

    const-string v12, "Got exception parsing config."

    .line 157
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v8, values:Landroid/content/ContentValues;
    const/4 v6, 0x7

    .line 161
    .local v6, screenCount:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 162
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 163
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 165
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 169
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    if-eq v7, v11, :cond_2

    .line 171
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 175
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Launcher:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 179
    const-string v9, "launcher"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 180
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_0

    .line 183
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #type:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 184
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v13, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return v6

    .line 185
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 186
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v13, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getUse16BitWindow(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "use_16bit_window"

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getUseIconMenu(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const-string v12, "Launcher.LauncherConfig"

    const-string v11, "Got exception parsing config."

    .line 523
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 524
    .local v8, values:Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 527
    .local v7, useIconMenu:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 528
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 529
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 531
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 535
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, type:I
    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v6, v9, :cond_2

    .line 537
    const/4 v9, 0x2

    if-ne v6, v9, :cond_0

    .line 541
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 542
    .local v4, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Launcher:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 543
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 544
    const-string v9, "launcher"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 545
    const/16 v9, 0x9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    goto :goto_0

    .line 548
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #type:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 549
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return v7

    .line 550
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 551
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getUseMainMenuConcentrationEffect(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "use_concentration_effect"

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getUseMainMenuListMode(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const-string v12, "Launcher.LauncherConfig"

    const-string v11, "Got exception parsing config."

    .line 412
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v8, values:Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 416
    .local v7, useMainMenuListMode:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 417
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 418
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 420
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 424
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, type:I
    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v6, v9, :cond_2

    .line 426
    const/4 v9, 0x2

    if-ne v6, v9, :cond_0

    .line 430
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Launcher:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 433
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 434
    const-string v9, "launcher"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 435
    const/4 v9, 0x6

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    goto :goto_0

    .line 439
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #type:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 440
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return v7

    .line 441
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 442
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getWorkspaceCellsX(Landroid/content/Context;)I
    .locals 13
    .parameter "context"

    .prologue
    const-string v12, "Launcher.LauncherConfig"

    const-string v11, "Got exception parsing config."

    .line 449
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v8, values:Landroid/content/ContentValues;
    const/4 v2, 0x4

    .line 453
    .local v2, cellsX:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 454
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 455
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 457
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 461
    .local v3, depth:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    .line 463
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 467
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Launcher:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 470
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 471
    const-string v9, "launcher"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 472
    const/4 v9, 0x7

    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getInteger(II)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 476
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v3           #depth:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #type:I
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 477
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return v2

    .line 478
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 479
    .local v4, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getWorkspaceCellsY(Landroid/content/Context;)I
    .locals 13
    .parameter "context"

    .prologue
    const-string v12, "Launcher.LauncherConfig"

    const-string v11, "Got exception parsing config."

    .line 486
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v8, values:Landroid/content/ContentValues;
    const/4 v2, 0x4

    .line 490
    .local v2, cellsY:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 491
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 492
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 494
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 498
    .local v3, depth:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    .line 500
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 504
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Launcher:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 507
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 508
    const-string v9, "launcher"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 509
    const/16 v9, 0x8

    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getInteger(II)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 513
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v3           #depth:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #type:I
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 514
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return v2

    .line 515
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 516
    .local v4, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v12, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v11, 0x3

    const-string v13, "Launcher.LauncherConfig"

    const-string v12, "Got exception parsing config."

    .line 229
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v8, values:Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 233
    .local v7, useFullScreenForQuickViewLandscapeScreen:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 234
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 235
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v9, "config"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 237
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 241
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, type:I
    if-ne v6, v11, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v6, v9, :cond_2

    .line 243
    const/4 v9, 0x2

    if-ne v6, v9, :cond_0

    .line 247
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, name:Ljava/lang/String;
    sget-object v9, Lcom/sec/android/app/twlauncher/R$styleable;->Launcher:[I

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 250
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 251
    const-string v9, "launcher"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 252
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    goto :goto_0

    .line 256
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #type:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 257
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v13, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return v7

    .line 258
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 259
    .local v3, e:Ljava/io/IOException;
    const-string v9, "Launcher.LauncherConfig"

    const-string v9, "Got exception parsing config."

    invoke-static {v13, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "use_large_indicator"

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
