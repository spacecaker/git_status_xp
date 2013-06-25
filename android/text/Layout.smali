.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field private static final TAB_INCREMENT:I = 0x14

.field private static mPassword:Z

.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private isSplitLineText:Z

.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mEmojiRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 46
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 49
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 54
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 56
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 2181
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2202
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x1

    new-array v1, v1, [S

    const/16 v2, 0x7fff

    aput-short v2, v1, v3

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2204
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 2208
    sput-boolean v3, Landroid/text/Layout;->mPassword:Z

    return-void

    .line 58
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 59
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    .line 2204
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0xfft 0x7ft
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2178
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/Layout;->isSplitLineText:Z

    .line 120
    if-gez p3, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 124
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 125
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 126
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 127
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 128
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 129
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 130
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 131
    return-void
.end method

.method static synthetic access$100(Landroid/text/Layout;III[CI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 1403
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1404
    .local v16, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1405
    .local v15, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    .line 1407
    .local v11, dirs:Landroid/text/Layout$Directions;
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v15, v6

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 1408
    add-int/lit8 v15, v15, -0x1

    .line 1410
    :cond_0
    move/from16 v13, v16

    .line 1411
    .local v13, here:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v11}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    if-ge v14, v5, :cond_3

    .line 1412
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v11}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v14

    add-int v18, v13, v5

    .line 1413
    .local v18, there:I
    move/from16 v0, v18

    move v1, v15

    if-le v0, v1, :cond_1

    .line 1414
    move/from16 v18, v15

    .line 1416
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    move v1, v13

    if-lt v0, v1, :cond_2

    .line 1417
    move/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1418
    .local v17, st:I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1420
    .local v12, en:I
    move/from16 v0, v17

    move v1, v12

    if-eq v0, v1, :cond_2

    .line 1421
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v5

    move v3, v6

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v6

    .line 1422
    .local v6, h1:F
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v5

    move v3, v7

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v8

    .line 1432
    .local v8, h2:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v9, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v5, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1437
    .end local v6           #h1:F
    .end local v8           #h2:F
    .end local v12           #en:I
    .end local v17           #st:I
    :cond_2
    move/from16 v13, v18

    .line 1411
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1439
    .end local v18           #there:I
    :cond_3
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V
    .locals 31
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "hasTabs"
    .parameter "parspans"

    .prologue
    .line 1615
    if-nez p13, :cond_6

    .line 1616
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, p6

    move-object v1, v5

    if-ne v0, v1, :cond_1

    .line 1620
    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1623
    :cond_1
    const/16 v20, 0x0

    .line 1629
    .local v20, buf:[C
    :goto_1
    const/16 v22, 0x0

    .line 1631
    .local v22, h:F
    const/16 v23, 0x0

    .line 1632
    .local v23, here:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_f

    .line 1633
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v24

    add-int v29, v23, v5

    .line 1634
    .local v29, there:I
    sub-int v5, p4, p3

    move/from16 v0, v29

    move v1, v5

    if-le v0, v1, :cond_2

    .line 1635
    sub-int v29, p4, p3

    .line 1637
    :cond_2
    move/from16 v27, v23

    .line 1638
    .local v27, segstart:I
    if-eqz p13, :cond_7

    move/from16 v25, v23

    .local v25, j:I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v29

    if-gt v0, v1, :cond_e

    .line 1639
    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    aget-char v5, v20, v25

    const/16 v6, 0x9

    if-ne v5, v6, :cond_a

    .line 1640
    :cond_3
    add-int v7, p3, v27

    add-int v8, p3, v25

    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move v10, v5

    :goto_4
    add-float v11, p7, v22

    add-int v5, p3, v25

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_9

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_5
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v22, v22, v5

    .line 1646
    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    aget-char v5, v20, v25

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    .line 1647
    move/from16 v0, p5

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v22

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v6

    move-object/from16 v4, p14

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v6

    mul-float v22, v5, v6

    .line 1649
    :cond_4
    add-int/lit8 v27, v25, 0x1

    .line 1638
    :cond_5
    :goto_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 1625
    .end local v20           #buf:[C
    .end local v22           #h:F
    .end local v23           #here:I
    .end local v24           #i:I
    .end local v25           #j:I
    .end local v27           #segstart:I
    .end local v29           #there:I
    :cond_6
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v20

    .line 1626
    .restart local v20       #buf:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v20

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    goto/16 :goto_1

    .restart local v22       #h:F
    .restart local v23       #here:I
    .restart local v24       #i:I
    .restart local v27       #segstart:I
    .restart local v29       #there:I
    :cond_7
    move/from16 v25, v29

    .line 1638
    goto :goto_3

    .line 1640
    .restart local v25       #j:I
    :cond_8
    const/4 v5, 0x0

    move v10, v5

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_5

    .line 1650
    :cond_a
    if-eqz p13, :cond_5

    aget-char v5, v20, v25

    const v6, 0xd800

    if-lt v5, v6, :cond_5

    aget-char v5, v20, v25

    const v6, 0xdfff

    if-gt v5, v6, :cond_5

    add-int/lit8 v5, v25, 0x1

    move v0, v5

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    .line 1651
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v21

    .line 1653
    .local v21, emoji:I
    sget v5, Landroid/text/Layout;->MIN_EMOJI:I

    move/from16 v0, v21

    move v1, v5

    if-lt v0, v1, :cond_5

    sget v5, Landroid/text/Layout;->MAX_EMOJI:I

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_5

    .line 1654
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1657
    .local v19, bm:Landroid/graphics/Bitmap;
    if-eqz v19, :cond_5

    .line 1658
    add-int v7, p3, v27

    add-int v8, p3, v25

    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move v10, v5

    :goto_7
    add-float v11, p7, v22

    add-int v5, p3, v25

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_d

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_8
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v22, v22, v5

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v5, v0

    if-nez v5, :cond_b

    .line 1665
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    .line 1668
    :cond_b
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1669
    add-int v8, p3, v25

    add-int v5, p3, v25

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1673
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1674
    .local v18, bitmapHeight:F
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    move v0, v5

    neg-float v0, v0

    move/from16 v28, v0

    .line 1675
    .local v28, textHeight:F
    div-float v26, v28, v18

    .line 1676
    .local v26, scale:F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v30, v5, v26

    .line 1678
    .local v30, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v5, v0

    add-float v6, p7, v22

    move/from16 v0, p9

    int-to-float v0, v0

    move v7, v0

    sub-float v7, v7, v28

    add-float v8, p7, v22

    add-float v8, v8, v30

    move/from16 v0, p9

    int-to-float v0, v0

    move v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1681
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1682
    add-float v22, v22, v30

    .line 1684
    add-int/lit8 v25, v25, 0x1

    .line 1685
    add-int/lit8 v27, v25, 0x1

    goto/16 :goto_6

    .line 1658
    .end local v18           #bitmapHeight:F
    .end local v26           #scale:F
    .end local v28           #textHeight:F
    .end local v30           #width:F
    :cond_c
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_7

    :cond_d
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_8

    .line 1691
    .end local v19           #bm:Landroid/graphics/Bitmap;
    .end local v21           #emoji:I
    :cond_e
    move/from16 v23, v29

    .line 1632
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 1694
    .end local v25           #j:I
    .end local v27           #segstart:I
    .end local v29           #there:I
    :cond_f
    if-eqz p13, :cond_0

    .line 1695
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->recycle([C)V

    goto/16 :goto_0
.end method

.method private ellipsize(III[CI)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 2012
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 2014
    .local v2, ellipsisCount:I
    if-nez v2, :cond_1

    .line 2036
    :cond_0
    return-void

    .line 2018
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 2019
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2021
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 2024
    if-ne v4, v3, :cond_3

    .line 2025
    const/16 v1, 0x2026

    .line 2030
    .local v1, c:C
    :goto_1
    add-int v0, v4, v5

    .line 2032
    .local v0, a:I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 2033
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 2021
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2027
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_3
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    .local v8, need:F
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 85
    .local v1, workPaint:Landroid/text/TextPaint;
    move v3, p1

    .local v3, i:I
    :goto_0
    if-gt v3, p2, :cond_2

    .line 86
    const/16 v0, 0xa

    invoke-static {p0, v0, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    .line 88
    .local v4, next:I
    if-gez v4, :cond_0

    .line 89
    move v4, p2

    .line 92
    :cond_0
    const/4 v6, 0x1

    move-object v0, p3

    move-object v2, p0

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v9

    .line 95
    .local v9, w:F
    cmpl-float v0, v9, v8

    if-lez v0, :cond_1

    .line 96
    move v8, v9

    .line 98
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 85
    move v3, v4

    goto :goto_0

    .line 101
    .end local v4           #next:I
    .end local v9           #w:F
    :cond_2
    return v8
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 643
    .local v0, line:I
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZZI)F
    .locals 28
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"
    .parameter "line"

    .prologue
    .line 648
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 649
    .local v5, start:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v7

    .line 650
    .local v7, end:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .line 651
    .local v8, dir:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    .line 652
    .local v12, tab:Z
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 654
    .local v9, directions:Landroid/text/Layout$Directions;
    const/4 v13, 0x0

    .line 655
    .local v13, tabs:[Landroid/text/style/TabStopSpan;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v2, v5, v7, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tabs:[Landroid/text/style/TabStopSpan;
    check-cast v13, [Landroid/text/style/TabStopSpan;

    .line 659
    .restart local v13       #tabs:[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v4, v0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v13}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F

    move-result v27

    .line 662
    .local v27, wid:F
    move/from16 v0, p1

    move v1, v7

    if-le v0, v1, :cond_1

    .line 663
    const/4 v2, -0x1

    if-ne v8, v2, :cond_2

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    sub-float v27, v27, v2

    .line 671
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v22

    .line 672
    .local v22, align:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v24

    .line 673
    .local v24, left:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v26

    .line 675
    .local v26, right:I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_4

    .line 676
    const/4 v2, -0x1

    if-ne v8, v2, :cond_3

    .line 677
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    .line 695
    :goto_1
    return v2

    .line 667
    .end local v22           #align:Landroid/text/Layout$Alignment;
    .end local v24           #left:I
    .end local v26           #right:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    add-float v27, v27, v2

    goto :goto_0

    .line 679
    .restart local v22       #align:Landroid/text/Layout$Alignment;
    .restart local v24       #left:I
    .restart local v26       #right:I
    :cond_3
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    goto :goto_1

    .line 682
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v25

    .line 684
    .local v25, max:F
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_6

    .line 685
    const/4 v2, -0x1

    if-ne v8, v2, :cond_5

    .line 686
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_1

    .line 688
    :cond_5
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    sub-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_1

    .line 690
    :cond_6
    move/from16 v0, v25

    float-to-int v0, v0

    move v2, v0

    and-int/lit8 v23, v2, -0x2

    .line 692
    .local v23, imax:I
    const/4 v2, -0x1

    if-ne v8, v2, :cond_7

    .line 693
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_1

    .line 695
    :cond_7
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v24

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_1
.end method

.method private getLineMax(I[Ljava/lang/Object;Z)F
    .locals 8
    .parameter "line"
    .parameter "tabs"
    .parameter "full"

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 830
    .local v3, start:I
    if-eqz p3, :cond_1

    .line 831
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 835
    .local v4, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v6

    .line 837
    .local v6, tab:Z
    if-nez p2, :cond_0

    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v0, v3, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 841
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    return v0

    .line 833
    .end local v4           #end:I
    .end local v6           #tab:Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4       #end:I
    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 4
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 1033
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1035
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_1

    move v2, p3

    .line 1052
    :goto_0
    return v2

    .line 1039
    .local v0, ch:C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_1
    if-le p3, p2, :cond_3

    .line 1040
    sub-int v2, p3, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1042
    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1043
    sub-int v2, p3, v3

    goto :goto_0

    .line 1046
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .end local v0           #ch:C
    :cond_3
    move v2, p3

    .line 1052
    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 10
    .parameter "offset"

    .prologue
    .line 1280
    if-nez p1, :cond_0

    .line 1281
    const/4 v8, 0x0

    .line 1306
    :goto_0
    return v8

    .line 1283
    :cond_0
    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1284
    .local v7, text:Ljava/lang/CharSequence;
    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1286
    .local v1, c:C
    const v8, 0xdc00

    if-lt v1, v8, :cond_1

    const v8, 0xdfff

    if-gt v1, v8, :cond_1

    .line 1287
    const/4 v8, 0x1

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1289
    .local v2, c1:C
    const v8, 0xd800

    if-lt v2, v8, :cond_1

    const v8, 0xdbff

    if-gt v2, v8, :cond_1

    .line 1290
    add-int/lit8 p1, p1, -0x1

    .line 1293
    .end local v2           #c1:C
    :cond_1
    iget-boolean v8, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v8, :cond_3

    .line 1294
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 1297
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v5

    if-ge v4, v8, :cond_3

    .line 1298
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1299
    .local v6, start:I
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1301
    .local v3, end:I
    if-ge v6, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 1302
    move p1, v6

    .line 1297
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    :cond_3
    move v8, p1

    .line 1306
    goto :goto_0
.end method

.method private isDoubleSpaceChar(I)Z
    .locals 1
    .parameter "testChar"

    .prologue
    .line 908
    const/16 v0, 0x622

    if-eq p1, v0, :cond_0

    const/16 v0, 0x623

    if-eq p1, v0, :cond_0

    const/16 v0, 0x625

    if-eq p1, v0, :cond_0

    const/16 v0, 0x627

    if-eq p1, v0, :cond_0

    const/16 v0, 0x629

    if-eq p1, v0, :cond_0

    const/16 v0, 0x62f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x630

    if-eq p1, v0, :cond_0

    const/16 v0, 0x645

    if-eq p1, v0, :cond_0

    const/16 v0, 0x647

    if-ne p1, v0, :cond_1

    .line 910
    :cond_0
    const/4 v0, 0x1

    .line 912
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPassword()Z
    .locals 1

    .prologue
    .line 2131
    sget-boolean v0, Landroid/text/Layout;->mPassword:Z

    return v0
.end method

.method private isTashkeelChar(I)Z
    .locals 1
    .parameter "testChar"

    .prologue
    .line 896
    const/16 v0, 0x610

    if-lt p1, v0, :cond_0

    const/16 v0, 0x61a

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x64b

    if-lt p1, v0, :cond_1

    const/16 v0, 0x65f

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x6d6

    if-lt p1, v0, :cond_2

    const/16 v0, 0x6ed

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x670

    if-ne p1, v0, :cond_4

    .line 900
    :cond_3
    const/4 v0, 0x1

    .line 902
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F
    .locals 19
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "offset"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "trailing"
    .parameter "alt"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    .line 1705
    const/4 v5, 0x0

    .line 1707
    .local v5, buf:[C
    if-eqz p10, :cond_0

    .line 1708
    sub-int v5, p5, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .line 1709
    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_0
    move-object v12, v5

    .line 1712
    .end local v5           #buf:[C
    .local v12, buf:[C
    const/4 v5, 0x0

    .line 1714
    .local v5, h:F
    if-eqz p9, :cond_1

    .line 1715
    const/4 v6, -0x1

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_1

    .line 1716
    if-nez p8, :cond_6

    const/16 p8, 0x1

    .line 1719
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 1720
    .local v6, here:I
    const/4 v7, 0x0

    .local v7, i:I
    move v14, v7

    .end local v7           #i:I
    .local v14, i:I
    :goto_1
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    array-length v7, v7

    if-ge v14, v7, :cond_12

    .line 1721
    if-eqz p9, :cond_2

    .line 1722
    if-nez p8, :cond_7

    const/16 p8, 0x1

    .line 1724
    :cond_2
    :goto_2
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    aget-short v7, v7, v14

    add-int/2addr v7, v6

    .line 1725
    .local v7, there:I
    sub-int v8, p5, p3

    if-le v7, v8, :cond_18

    .line 1726
    sub-int v7, p5, p3

    move/from16 v18, v7

    .line 1728
    .end local v7           #there:I
    .local v18, there:I
    :goto_3
    move v7, v6

    .line 1729
    .local v7, segstart:I
    if-eqz p10, :cond_8

    .local v6, j:I
    :goto_4
    move v15, v6

    .end local v6           #j:I
    .local v15, j:I
    move/from16 v16, v7

    .end local v7           #segstart:I
    .local v16, segstart:I
    move v13, v5

    .end local v5           #h:F
    .local v13, h:F
    :goto_5
    move v0, v15

    move/from16 v1, v18

    if-gt v0, v1, :cond_11

    .line 1730
    const/4 v6, 0x0

    .line 1731
    .local v6, codept:I
    const/4 v5, 0x0

    .line 1733
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz p10, :cond_3

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 1734
    aget-char v6, v12, v15

    .line 1737
    :cond_3
    const v7, 0xd800

    if-lt v6, v7, :cond_17

    const v7, 0xdfff

    if-gt v6, v7, :cond_17

    add-int/lit8 v7, v15, 0x1

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_17

    .line 1738
    invoke-static {v12, v15}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 1740
    sget v7, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v6, v7, :cond_17

    sget v7, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v6, v7, :cond_17

    .line 1741
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .end local v5           #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v6}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bm:Landroid/graphics/Bitmap;
    move-object v11, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .local v11, bm:Landroid/graphics/Bitmap;
    move v5, v6

    .line 1745
    .end local v6           #codept:I
    .local v5, codept:I
    :goto_6
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/16 v6, 0x9

    if-eq v5, v6, :cond_4

    if-eqz v11, :cond_16

    .line 1748
    :cond_4
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_5

    .end local v5           #codept:I
    if-eqz p8, :cond_a

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_a

    .line 1750
    :cond_5
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_9

    and-int/lit8 v5, v14, 0x1

    if-nez v5, :cond_9

    .line 1751
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0
    add-float p0, p0, v13

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1827
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    .end local p0           #h:F
    .local p1, h:F
    :goto_7
    return p1

    .line 1716
    .end local v14           #i:I
    .local v5, h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_6
    const/16 p8, 0x0

    goto/16 :goto_0

    .line 1722
    .local v6, here:I
    .restart local v14       #i:I
    :cond_7
    const/16 p8, 0x0

    goto/16 :goto_2

    .restart local v7       #segstart:I
    .restart local v18       #there:I
    :cond_8
    move/from16 v6, v18

    .line 1729
    goto :goto_4

    .line 1757
    .end local v5           #h:F
    .end local v6           #here:I
    .end local v7           #segstart:I
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    :cond_9
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_a

    and-int/lit8 v5, v14, 0x1

    if-eqz v5, :cond_a

    .line 1758
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v13, p0

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1761
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_7

    .line 1765
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_a
    add-int v8, p3, v16

    add-int v9, p3, v15

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v17

    .line 1769
    .local v17, segw:F
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_b

    if-eqz p8, :cond_d

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_d

    .line 1771
    :cond_b
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_c

    .line 1772
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v17, p0

    add-float p0, p0, v13

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1776
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_7

    .line 1779
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_c
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 1780
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v17, p0

    sub-float p0, v13, p0

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1784
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_7

    .line 1788
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_d
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_e

    .line 1789
    sub-float v5, v13, v17

    .line 1793
    .end local v13           #h:F
    .restart local v5       #h:F
    :goto_8
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    aget-char v6, v12, v15

    const/16 v7, 0x9

    if-ne v6, v7, :cond_15

    .line 1794
    add-int v6, p3, v15

    move/from16 v0, p4

    move v1, v6

    if-ne v0, v1, :cond_f

    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .line 1795
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_7

    .line 1791
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_e
    add-float v5, v13, v17

    .end local v13           #h:F
    .restart local v5       #h:F
    goto :goto_8

    .line 1797
    :cond_f
    move/from16 v0, p6

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v5, v7

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move v3, v5

    move-object/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    .end local v5           #h:F
    move-result v5

    mul-float/2addr v5, v6

    .restart local v5       #h:F
    move v13, v5

    .line 1800
    .end local v5           #h:F
    .restart local v13       #h:F
    :goto_9
    if-eqz v11, :cond_14

    .line 1801
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1802
    add-int/lit8 v9, v15, 0x2

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move v8, v15

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1805
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1808
    .local v5, wid:F
    const/4 v6, -0x1

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_10

    .line 1809
    sub-float v5, v13, v5

    .line 1814
    .end local v13           #h:F
    .local v5, h:F
    :goto_a
    add-int/lit8 v6, v15, 0x1

    .line 1817
    .end local v15           #j:I
    .local v6, j:I
    :goto_b
    add-int/lit8 v7, v6, 0x1

    .line 1729
    .end local v16           #segstart:I
    .end local v17           #segw:F
    .restart local v7       #segstart:I
    :goto_c
    add-int/lit8 v6, v6, 0x1

    move v15, v6

    .end local v6           #j:I
    .restart local v15       #j:I
    move/from16 v16, v7

    .end local v7           #segstart:I
    .restart local v16       #segstart:I
    move v13, v5

    .end local v5           #h:F
    .restart local v13       #h:F
    goto/16 :goto_5

    .line 1811
    .local v5, wid:F
    .restart local v17       #segw:F
    :cond_10
    add-float/2addr v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto :goto_a

    .line 1821
    .end local v5           #h:F
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v17           #segw:F
    .restart local v13       #h:F
    :cond_11
    move/from16 v5, v18

    .line 1720
    .local v5, here:I
    add-int/lit8 v6, v14, 0x1

    .end local v14           #i:I
    .local v6, i:I
    move v14, v6

    .end local v6           #i:I
    .restart local v14       #i:I
    move v6, v5

    .end local v5           #here:I
    .local v6, here:I
    move v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto/16 :goto_1

    .line 1824
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    :cond_12
    if-eqz p10, :cond_13

    .line 1825
    invoke-static {v12}, Landroid/text/TextUtils;->recycle([C)V

    :cond_13
    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .line 1827
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_7

    .end local v6           #here:I
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    .restart local v17       #segw:F
    .restart local v18       #there:I
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_14
    move v6, v15

    .end local v15           #j:I
    .local v6, j:I
    move v5, v13

    .end local v13           #h:F
    .restart local v5       #h:F
    goto :goto_b

    .end local v6           #j:I
    .restart local v15       #j:I
    :cond_15
    move v13, v5

    .end local v5           #h:F
    .restart local v13       #h:F
    goto :goto_9

    .end local v17           #segw:F
    .local v5, codept:I
    :cond_16
    move v6, v15

    .end local v15           #j:I
    .restart local v6       #j:I
    move/from16 v7, v16

    .end local v16           #segstart:I
    .restart local v7       #segstart:I
    move v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto :goto_c

    .end local v7           #segstart:I
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v6, codept:I
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    :cond_17
    move-object v11, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    move v5, v6

    .end local v6           #codept:I
    .local v5, codept:I
    goto/16 :goto_6

    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v13           #h:F
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    .local v5, h:F
    .local v6, here:I
    .local v7, there:I
    :cond_18
    move/from16 v18, v7

    .end local v7           #there:I
    .restart local v18       #there:I
    goto/16 :goto_3
.end method

.method static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F
    .locals 20
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    .line 1851
    const/4 v5, 0x0

    .line 1853
    .local v5, buf:[C
    if-eqz p6, :cond_0

    .line 1854
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .line 1855
    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_0
    move-object v14, v5

    .line 1858
    .end local v5           #buf:[C
    .local v14, buf:[C
    sub-int v16, p4, p3

    .line 1860
    .local v16, len:I
    const/4 v8, 0x0

    .line 1861
    .local v8, lastPos:I
    const/4 v11, 0x0

    .line 1862
    .local v11, width:F
    const/4 v5, 0x0

    .local v5, ascent:I
    const/4 v7, 0x0

    .local v7, descent:I
    const/4 v10, 0x0

    .local v10, top:I
    const/4 v6, 0x0

    .line 1864
    .local v6, bottom:I
    if-eqz p5, :cond_1

    .line 1865
    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1866
    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1869
    :cond_1
    if-eqz p6, :cond_5

    const/4 v9, 0x0

    .local v9, pos:I
    :goto_0
    move/from16 v17, v9

    .end local v9           #pos:I
    .local v17, pos:I
    move v13, v6

    .end local v6           #bottom:I
    .local v13, bottom:I
    move/from16 v18, v10

    .end local v10           #top:I
    .local v18, top:I
    move v15, v7

    .end local v7           #descent:I
    .local v15, descent:I
    move/from16 v19, v11

    .end local v11           #width:F
    .local v19, width:F
    move v11, v5

    .end local v5           #ascent:I
    .local v11, ascent:I
    move v7, v8

    .end local v8           #lastPos:I
    .local v7, lastPos:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_8

    .line 1870
    const/4 v6, 0x0

    .line 1871
    .local v6, codept:I
    const/4 v5, 0x0

    .line 1873
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz p6, :cond_2

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 1874
    aget-char v6, v14, v17

    .line 1877
    :cond_2
    const v8, 0xd800

    if-lt v6, v8, :cond_12

    const v8, 0xdfff

    if-gt v6, v8, :cond_12

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 1878
    move-object v0, v14

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 1880
    sget v8, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v6, v8, :cond_12

    sget v8, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v6, v8, :cond_12

    .line 1881
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .end local v5           #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v6}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bm:Landroid/graphics/Bitmap;
    move-object v12, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .local v12, bm:Landroid/graphics/Bitmap;
    move v5, v6

    .line 1885
    .end local v6           #codept:I
    .local v5, codept:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    if-eqz v12, :cond_11

    .line 1886
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 1888
    .end local v5           #codept:I
    add-int v8, p3, v7

    add-int v9, p3, v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v7           #lastPos:I
    move-result v5

    add-float v19, v19, v5

    .line 1892
    if-eqz p5, :cond_4

    .line 1893
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v5, v0

    if-gez v5, :cond_6

    .line 1894
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1895
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1902
    :cond_4
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    .line 1903
    if-nez v12, :cond_7

    .line 1905
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v19

    move-object/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v5

    .end local v19           #width:F
    .local v5, width:F
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move v12, v5

    .line 1928
    .end local v5           #width:F
    .local v12, width:F
    :goto_4
    if-eqz p5, :cond_f

    .line 1929
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    if-ge v5, v11, :cond_e

    .line 1930
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    .line 1932
    .end local v11           #ascent:I
    .local v5, ascent:I
    :goto_5
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    if-le v6, v15, :cond_d

    .line 1933
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    .end local v15           #descent:I
    .local v6, descent:I
    move v7, v6

    .line 1936
    .end local v6           #descent:I
    .local v7, descent:I
    :goto_6
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 1937
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    .end local v18           #top:I
    .local v6, top:I
    move v8, v6

    .line 1939
    .end local v6           #top:I
    .local v8, top:I
    :goto_7
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    if-le v6, v13, :cond_b

    .line 1940
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    .end local v13           #bottom:I
    .local v6, bottom:I
    move v10, v8

    .line 1947
    .end local v8           #top:I
    .restart local v10       #top:I
    :goto_8
    add-int/lit8 v8, v9, 0x1

    .local v8, lastPos:I
    move v11, v12

    .line 1869
    .end local v12           #width:F
    .local v11, width:F
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v9

    .end local v9           #pos:I
    .restart local v17       #pos:I
    move v13, v6

    .end local v6           #bottom:I
    .restart local v13       #bottom:I
    move/from16 v18, v10

    .end local v10           #top:I
    .restart local v18       #top:I
    move v15, v7

    .end local v7           #descent:I
    .restart local v15       #descent:I
    move/from16 v19, v11

    .end local v11           #width:F
    .restart local v19       #width:F
    move v11, v5

    .end local v5           #ascent:I
    .local v11, ascent:I
    move v7, v8

    .end local v8           #lastPos:I
    .local v7, lastPos:I
    goto/16 :goto_1

    .end local v13           #bottom:I
    .end local v15           #descent:I
    .end local v17           #pos:I
    .end local v18           #top:I
    .end local v19           #width:F
    .restart local v5       #ascent:I
    .restart local v6       #bottom:I
    .local v7, descent:I
    .restart local v8       #lastPos:I
    .restart local v10       #top:I
    .local v11, width:F
    :cond_5
    move/from16 v9, v16

    goto/16 :goto_0

    .line 1897
    .end local v5           #ascent:I
    .end local v6           #bottom:I
    .end local v7           #descent:I
    .end local v8           #lastPos:I
    .end local v10           #top:I
    .local v11, ascent:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_6
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1898
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_3

    .line 1915
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1916
    add-int v8, p3, v17

    add-int v5, p3, v17

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1919
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v6, v19, v5

    .line 1924
    .end local v19           #width:F
    .local v6, width:F
    add-int/lit8 v5, v17, 0x1

    .end local v17           #pos:I
    .local v5, pos:I
    move v9, v5

    .end local v5           #pos:I
    .restart local v9       #pos:I
    move v12, v6

    .end local v6           #width:F
    .local v12, width:F
    goto/16 :goto_4

    .line 1951
    .end local v9           #pos:I
    .end local v12           #width:F
    .local v7, lastPos:I
    .restart local v17       #pos:I
    .restart local v19       #width:F
    :cond_8
    if-eqz p5, :cond_9

    .line 1952
    move v0, v11

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1953
    move v0, v15

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1954
    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1955
    move v0, v13

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1958
    :cond_9
    if-eqz p6, :cond_a

    .line 1959
    invoke-static {v14}, Landroid/text/TextUtils;->recycle([C)V

    .line 1961
    :cond_a
    return v19

    .end local v11           #ascent:I
    .end local v15           #descent:I
    .end local v17           #pos:I
    .end local v18           #top:I
    .end local v19           #width:F
    .local v5, ascent:I
    .local v7, descent:I
    .local v8, top:I
    .restart local v9       #pos:I
    .restart local v12       #width:F
    :cond_b
    move v6, v13

    .end local v13           #bottom:I
    .local v6, bottom:I
    move v10, v8

    .end local v8           #top:I
    .restart local v10       #top:I
    goto/16 :goto_8

    .end local v6           #bottom:I
    .end local v10           #top:I
    .restart local v13       #bottom:I
    .restart local v18       #top:I
    :cond_c
    move/from16 v8, v18

    .end local v18           #top:I
    .restart local v8       #top:I
    goto/16 :goto_7

    .end local v7           #descent:I
    .end local v8           #top:I
    .restart local v15       #descent:I
    .restart local v18       #top:I
    :cond_d
    move v7, v15

    .end local v15           #descent:I
    .restart local v7       #descent:I
    goto/16 :goto_6

    .end local v5           #ascent:I
    .end local v7           #descent:I
    .restart local v11       #ascent:I
    .restart local v15       #descent:I
    :cond_e
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    goto/16 :goto_5

    .end local v5           #ascent:I
    .restart local v11       #ascent:I
    :cond_f
    move v6, v13

    .end local v13           #bottom:I
    .restart local v6       #bottom:I
    move/from16 v10, v18

    .end local v18           #top:I
    .restart local v10       #top:I
    move v7, v15

    .end local v15           #descent:I
    .restart local v7       #descent:I
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    goto/16 :goto_8

    .end local v5           #ascent:I
    .end local v6           #bottom:I
    .end local v7           #descent:I
    .end local v9           #pos:I
    .end local v10           #top:I
    .restart local v11       #ascent:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_10
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move/from16 v12, v19

    .end local v19           #width:F
    .local v12, width:F
    goto/16 :goto_4

    .end local v9           #pos:I
    .local v5, codept:I
    .local v7, lastPos:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v17       #pos:I
    .restart local v19       #width:F
    :cond_11
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move v6, v13

    .end local v13           #bottom:I
    .restart local v6       #bottom:I
    move/from16 v10, v18

    .end local v18           #top:I
    .restart local v10       #top:I
    move v5, v11

    .end local v11           #ascent:I
    .local v5, ascent:I
    move v8, v7

    .end local v7           #lastPos:I
    .local v8, lastPos:I
    move/from16 v11, v19

    .end local v19           #width:F
    .local v11, width:F
    move v7, v15

    .end local v15           #descent:I
    .local v7, descent:I
    goto/16 :goto_9

    .end local v8           #lastPos:I
    .end local v9           #pos:I
    .end local v10           #top:I
    .end local v12           #bm:Landroid/graphics/Bitmap;
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v6, codept:I
    .local v7, lastPos:I
    .local v11, ascent:I
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_12
    move-object v12, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .restart local v12       #bm:Landroid/graphics/Bitmap;
    move v5, v6

    .end local v6           #codept:I
    .local v5, codept:I
    goto/16 :goto_2
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    .line 1978
    const v2, 0x7f7fffff

    .line 1979
    .local v2, nh:F
    const/4 v0, 0x0

    .line 1981
    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 1982
    if-nez p4, :cond_0

    .line 1983
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1984
    const/4 v0, 0x1

    .line 1987
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 1988
    if-nez v0, :cond_2

    .line 1989
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 1987
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1993
    :cond_2
    aget-object p0, p4, v1

    check-cast p0, Landroid/text/style/TabStopSpan;

    invoke-interface {p0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1995
    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 1996
    int-to-float v2, v3

    goto :goto_1

    .line 1999
    .end local v3           #where:I
    :cond_3
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    move v4, v2

    .line 2003
    .end local v1           #i:I
    :goto_2
    return v4

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_2
.end method

.method public static setPassWord(Z)V
    .locals 0
    .parameter "pwd"

    .prologue
    .line 2127
    sput-boolean p0, Landroid/text/Layout;->mPassword:Z

    .line 2128
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 157
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 68
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 173
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 174
    :try_start_0
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 175
    monitor-exit v5

    .line 470
    .end local p2
    :cond_0
    return-void

    .line 178
    .restart local p2
    :cond_1
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v51, v0

    .line 179
    .local v51, dtop:I
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v50, v0

    .line 180
    .local v50, dbottom:I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/16 v65, 0x0

    .line 184
    .local v65, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v48

    .line 186
    .local v48, bottom:I
    move/from16 v0, v51

    move/from16 v1, v65

    if-le v0, v1, :cond_2

    .line 187
    move/from16 v65, v51

    .line 189
    :cond_2
    move/from16 v0, v50

    move/from16 v1, v48

    if-ge v0, v1, :cond_3

    .line 190
    move/from16 v48, v50

    .line 193
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v52

    .line 194
    .local v52, first:I
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v54

    .line 196
    .local v54, last:I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .line 197
    .local v58, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 199
    .local v59, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v6, v0

    .line 200
    .local v6, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    .line 201
    .local v12, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    .line 202
    .local v8, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v62, v0

    .line 204
    .local v62, spannedText:Z
    sget-object v46, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 205
    .local v46, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v61, 0x0

    .line 206
    .local v61, spanend:I
    const/16 v64, 0x0

    .line 211
    .local v64, textLength:I
    if-eqz v62, :cond_7

    .line 212
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v64

    .line 213
    move/from16 v15, v52

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, v54

    if-gt v0, v1, :cond_6

    .line 214
    move/from16 v13, v59

    .line 215
    .local v13, start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 216
    .local v14, end:I
    move/from16 v59, v14

    .line 218
    move/from16 v9, v58

    .line 219
    .local v9, ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 220
    .local v11, lbottom:I
    move/from16 v58, v11

    .line 221
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 223
    .local v10, lbaseline:I
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_4

    .line 224
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .line 225
    .local v60, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v64

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    .line 227
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .line 231
    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_4
    const/16 v57, 0x0

    .local v57, n:I
    :goto_1
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    move/from16 v0, v57

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 232
    aget-object v4, v46, v57

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    .line 234
    .local v4, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v15}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 231
    add-int/lit8 v57, v57, 0x1

    goto :goto_1

    .line 180
    .end local v4           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v6           #paint:Landroid/text/TextPaint;
    .end local v8           #width:I
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v12           #buf:Ljava/lang/CharSequence;
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v15           #i:I
    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v48           #bottom:I
    .end local v50           #dbottom:I
    .end local v51           #dtop:I
    .end local v52           #first:I
    .end local v54           #last:I
    .end local v57           #n:I
    .end local v58           #previousLineBottom:I
    .end local v59           #previousLineEnd:I
    .end local v61           #spanend:I
    .end local v62           #spannedText:Z
    .end local v64           #textLength:I
    .end local v65           #top:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 213
    .restart local v6       #paint:Landroid/text/TextPaint;
    .restart local v8       #width:I
    .restart local v9       #ltop:I
    .restart local v10       #lbaseline:I
    .restart local v11       #lbottom:I
    .restart local v12       #buf:Ljava/lang/CharSequence;
    .restart local v13       #start:I
    .restart local v14       #end:I
    .restart local v15       #i:I
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v48       #bottom:I
    .restart local v50       #dbottom:I
    .restart local v51       #dtop:I
    .restart local v52       #first:I
    .restart local v54       #last:I
    .restart local v57       #n:I
    .restart local v58       #previousLineBottom:I
    .restart local v59       #previousLineEnd:I
    .restart local v61       #spanend:I
    .restart local v62       #spannedText:Z
    .restart local v64       #textLength:I
    .restart local v65       #top:I
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 241
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v57           #n:I
    :cond_6
    const/16 v61, 0x0

    .line 242
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 244
    sget-object v46, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 249
    .end local v15           #i:I
    :cond_7
    if-eqz p2, :cond_9

    .line 250
    if-eqz p4, :cond_8

    .line 251
    const/4 v5, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    :cond_8
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    if-eqz p4, :cond_9

    .line 257
    const/4 v5, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .line 266
    .local v47, align:Landroid/text/Layout$Alignment;
    move/from16 v15, v52

    .end local p2
    .restart local v15       #i:I
    :goto_2
    move v0, v15

    move/from16 v1, v54

    if-gt v0, v1, :cond_0

    .line 267
    move/from16 v13, v59

    .line 269
    .restart local v13       #start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 270
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v14

    .line 272
    .restart local v14       #end:I
    move/from16 v9, v58

    .line 273
    .restart local v9       #ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 274
    .restart local v11       #lbottom:I
    move/from16 v58, v11

    .line 275
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 277
    .restart local v10       #lbaseline:I
    const/16 v27, 0x0

    .line 278
    .local v27, isFirstParaLine:Z
    if-eqz v62, :cond_c

    .line 279
    if-eqz v13, :cond_a

    const/4 v5, 0x1

    sub-int v5, v13, v5

    invoke-interface {v12, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_b

    .line 280
    :cond_a
    const/16 v27, 0x1

    .line 284
    :cond_b
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_c

    .line 285
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .line 286
    .restart local v60       #sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v64

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    .line 288
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .line 290
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .line 291
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    const/4 v7, 0x1

    sub-int v57, v5, v7

    .restart local v57       #n:I
    :goto_3
    if-ltz v57, :cond_c

    .line 292
    aget-object v5, v46, v57

    instance-of v5, v5, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_e

    .line 293
    aget-object p2, v46, v57

    check-cast p2, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {p2 .. p2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v47

    .line 300
    .end local v57           #n:I
    .end local v60           #sp:Landroid/text/Spanned;
    :cond_c
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v20

    .line 301
    .local v20, dir:I
    const/16 v31, 0x0

    .line 302
    .local v31, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v19, v0

    .line 306
    .local v19, right:I
    const/16 v63, 0x0

    .line 311
    .local v63, tempLeft:I
    if-eqz v62, :cond_12

    .line 312
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v55, v0

    .line 313
    .local v55, length:I
    const/16 v57, 0x0

    .restart local v57       #n:I
    :goto_4
    move/from16 v0, v57

    move/from16 v1, v55

    if-ge v0, v1, :cond_12

    .line 314
    aget-object v5, v46, v57

    instance-of v5, v5, Landroid/text/style/LeadingMarginSpan;

    if-eqz v5, :cond_d

    .line 315
    aget-object v16, v46, v57

    check-cast v16, Landroid/text/style/LeadingMarginSpan;

    .line 317
    .local v16, margin:Landroid/text/style/LeadingMarginSpan;
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_f

    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, p0

    .line 318
    invoke-interface/range {v16 .. v28}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 322
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v19, v19, v5

    .line 313
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    :cond_d
    :goto_5
    add-int/lit8 v57, v57, 0x1

    goto :goto_4

    .line 291
    .end local v19           #right:I
    .end local v20           #dir:I
    .end local v31           #left:I
    .end local v55           #length:I
    .end local v63           #tempLeft:I
    .restart local v60       #sp:Landroid/text/Spanned;
    :cond_e
    add-int/lit8 v57, v57, -0x1

    goto :goto_3

    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v16       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v19       #right:I
    .restart local v20       #dir:I
    .restart local v31       #left:I
    .restart local v55       #length:I
    .restart local v63       #tempLeft:I
    :cond_f
    move-object/from16 v28, v16

    move-object/from16 v29, p1

    move-object/from16 v30, v6

    move/from16 v32, v20

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v27

    move-object/from16 v40, p0

    .line 336
    invoke-interface/range {v28 .. v40}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 340
    move/from16 v66, v27

    .line 341
    .local v66, useMargin:Z
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_10

    .line 342
    move-object/from16 v0, v16

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v49

    .line 343
    .local v49, count:I
    move/from16 v0, v49

    move v1, v15

    if-le v0, v1, :cond_11

    const/4 v5, 0x1

    move/from16 v66, v5

    .line 345
    .end local v49           #count:I
    :cond_10
    :goto_6
    move-object/from16 v0, v16

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    add-int v31, v31, v5

    goto :goto_5

    .line 343
    .restart local v49       #count:I
    :cond_11
    const/4 v5, 0x0

    move/from16 v66, v5

    goto :goto_6

    .line 360
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v49           #count:I
    .end local v55           #length:I
    .end local v57           #n:I
    .end local v66           #useMargin:Z
    :cond_12
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_14

    .line 361
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_13

    .line 362
    move/from16 v67, v31

    .line 418
    .local v67, x:I
    :goto_7
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v38

    .line 419
    .local v38, directions:Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v45

    .line 425
    .local v45, hasTab:Z
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_18

    if-nez v62, :cond_18

    if-nez v45, :cond_18

    .line 437
    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v36, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v32, p1

    move-object/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v38, v6

    invoke-virtual/range {v32 .. v38}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 266
    .end local v38           #directions:Landroid/text/Layout$Directions;
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 381
    .end local v45           #hasTab:Z
    .end local v67           #x:I
    :cond_13
    move/from16 v67, v19

    .restart local v67       #x:I
    goto :goto_7

    .line 386
    .end local v67           #x:I
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v46

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v56, v0

    .line 387
    .local v56, max:I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_16

    .line 388
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_15

    .line 401
    add-int v67, v31, v56

    .restart local v67       #x:I
    goto :goto_7

    .line 404
    .end local v67           #x:I
    :cond_15
    sub-int v67, v19, v56

    .restart local v67       #x:I
    goto :goto_7

    .line 408
    .end local v67           #x:I
    :cond_16
    and-int/lit8 v56, v56, -0x2

    .line 409
    sub-int v5, v19, v31

    sub-int v5, v5, v56

    shr-int/lit8 v53, v5, 0x1

    .line 410
    .local v53, half:I
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_17

    .line 411
    sub-int v67, v19, v53

    .restart local v67       #x:I
    goto :goto_7

    .line 413
    .end local v67           #x:I
    :cond_17
    add-int v67, v31, v53

    .restart local v67       #x:I
    goto :goto_7

    .line 460
    .end local v53           #half:I
    .end local v56           #max:I
    .restart local v38       #directions:Landroid/text/Layout$Directions;
    .restart local v45       #hasTab:Z
    :cond_18
    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v44, v0

    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v20

    move/from16 v40, v9

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v43, v6

    invoke-direct/range {v32 .. v46}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1317
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1319
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1320
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1321
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1322
    .local v0, bottom:I
    const/4 v4, 0x0

    .line 1323
    .local v4, h1:F
    const/4 v5, 0x0

    .line 1331
    .local v5, h2:F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 1332
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .line 1335
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/high16 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .line 1339
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1341
    .local v3, fn:I
    const/4 v2, 0x0

    .line 1343
    .local v2, dist:I
    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    .line 1344
    :cond_0
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 1346
    if-eqz v3, :cond_1

    .line 1347
    add-int/2addr v7, v2

    .line 1348
    :cond_1
    if-eqz v1, :cond_2

    .line 1349
    sub-int/2addr v0, v2

    .line 1352
    :cond_2
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 1353
    const/high16 v4, 0x3f00

    .line 1354
    :cond_3
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    .line 1355
    const/high16 v5, 0x3f00

    .line 1357
    :cond_4
    cmpl-float v8, v4, v5

    if-nez v8, :cond_7

    .line 1358
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1359
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1368
    :goto_0
    const/4 v8, 0x2

    if-ne v1, v8, :cond_8

    .line 1369
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1370
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1371
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1372
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1384
    :cond_5
    :goto_1
    const/4 v8, 0x2

    if-ne v3, v8, :cond_9

    .line 1385
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1386
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1387
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1388
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1399
    :cond_6
    :goto_2
    return-void

    .line 1361
    :cond_7
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1362
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1364
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1365
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 1373
    :cond_8
    const/4 v8, 0x1

    if-ne v1, v8, :cond_5

    .line 1374
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1375
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1377
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1378
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1380
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1381
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1389
    :cond_9
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 1390
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1391
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1393
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1394
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1396
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1397
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getIsSplitLineText()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Landroid/text/Layout;->isSplitLineText:Z

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1067
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1059
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 558
    if-eqz p2, :cond_0

    .line 559
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 560
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 561
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 562
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 564
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1017
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 875
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 877
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 878
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 880
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 881
    move v1, v0

    goto :goto_0

    .line 883
    :cond_0
    move v2, v0

    goto :goto_0

    .line 886
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 887
    const/4 v3, 0x0

    .line 889
    :goto_1
    return v3

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public getLineForVertical(I)I
    .locals 5
    .parameter "vertical"

    .prologue
    .line 852
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 854
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 855
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 857
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 858
    move v1, v0

    goto :goto_0

    .line 860
    :cond_0
    move v2, v0

    goto :goto_0

    .line 863
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 864
    const/4 v3, 0x0

    .line 866
    :goto_1
    return v3

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 704
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 705
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 707
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 708
    if-ne v1, v7, :cond_0

    .line 720
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 748
    :goto_0
    return v5

    :cond_0
    move v5, v6

    .line 724
    goto :goto_0

    .line 725
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 726
    if-ne v1, v7, :cond_2

    move v5, v6

    .line 738
    goto :goto_0

    .line 742
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 744
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 745
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 746
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 748
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 815
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 757
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 758
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 760
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 761
    if-ne v1, v6, :cond_0

    .line 771
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    .line 797
    :goto_0
    return v5

    .line 775
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 776
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 777
    if-ne v1, v6, :cond_2

    .line 787
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 791
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 793
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 794
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 795
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 797
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 823
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 921
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 922
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 923
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 925
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 926
    add-int/lit8 v13, v13, 0x1

    .line 928
    :cond_0
    move v4, v14

    .line 929
    .local v4, best:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 931
    .local v5, bestdist:F
    move v9, v14

    .line 932
    .local v9, here:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 933
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    aget-short v18, v18, v11

    add-int v17, v9, v18

    .line 934
    .local v17, there:I
    and-int/lit8 v18, v11, 0x1

    if-nez v18, :cond_2

    const/16 v18, 0x1

    move/from16 v16, v18

    .line 936
    .local v16, swap:I
    :goto_1
    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_1

    .line 937
    move/from16 v17, v13

    .line 939
    :cond_1
    const/16 v18, 0x1

    sub-int v18, v17, v18

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    const/16 v19, 0x1

    sub-int v12, v18, v19

    .line 941
    .local v12, low:I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 942
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 943
    .local v8, guess:I
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 945
    .local v2, adguess:I
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3

    .line 946
    move v10, v8

    goto :goto_2

    .line 934
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_2
    const/16 v18, -0x1

    move/from16 v16, v18

    goto :goto_1

    .line 948
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_3
    move v12, v8

    goto :goto_2

    .line 951
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_4
    add-int/lit8 v18, v9, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 952
    add-int/lit8 v12, v9, 0x1

    .line 954
    :cond_5
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 955
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 957
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 959
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 960
    .local v3, aft:I
    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 961
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 963
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_6

    .line 964
    move v7, v15

    .line 965
    move v12, v3

    .line 969
    .end local v15           #other:F
    :cond_6
    cmpg-float v18, v7, v5

    if-gez v18, :cond_7

    .line 970
    move v5, v7

    .line 971
    move v4, v12

    .line 975
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_7
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 977
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    .line 978
    move v5, v7

    .line 979
    move v4, v9

    .line 982
    :cond_8
    move/from16 v9, v17

    .line 932
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 985
    .end local v7           #dist:F
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 987
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_a

    .line 988
    move v5, v7

    .line 989
    move v4, v13

    .line 1010
    :cond_a
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 18
    .parameter "offset"

    .prologue
    .line 1084
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 1085
    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1086
    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 1087
    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1089
    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 1090
    add-int/lit8 v8, v8, -0x1

    .line 1092
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .line 1094
    .local v11, horiz:F
    move/from16 v3, p1

    .line 1095
    .local v3, best:I
    const/high16 v4, -0x3100

    .line 1098
    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1099
    .local v5, candidate:I
    if-lt v5, v14, :cond_1

    if-gt v5, v8, :cond_1

    .line 1100
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1102
    .local v9, h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_1

    cmpl-float v16, v9, v4

    if-lez v16, :cond_1

    .line 1103
    move v3, v5

    .line 1104
    move v4, v9

    .line 1108
    .end local v9           #h:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1109
    if-lt v5, v14, :cond_2

    if-gt v5, v8, :cond_2

    .line 1110
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1112
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_2

    cmpl-float v16, v9, v4

    if-lez v16, :cond_2

    .line 1113
    move v3, v5

    .line 1114
    move v4, v9

    .line 1118
    .end local v9           #h:F
    :cond_2
    move v10, v14

    .line 1119
    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 1120
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .line 1121
    .local v15, there:I
    if-le v15, v8, :cond_3

    .line 1122
    move v15, v8

    .line 1124
    :cond_3
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1126
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_4

    cmpl-float v16, v9, v4

    if-lez v16, :cond_4

    .line 1127
    move v3, v10

    .line 1128
    move v4, v9

    .line 1131
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1132
    if-lt v5, v14, :cond_5

    if-gt v5, v8, :cond_5

    .line 1133
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1135
    cmpg-float v16, v9, v11

    if-gez v16, :cond_5

    cmpl-float v16, v9, v4

    if-lez v16, :cond_5

    .line 1136
    move v3, v5

    .line 1137
    move v4, v9

    .line 1141
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1142
    if-lt v5, v14, :cond_6

    if-gt v5, v8, :cond_6

    .line 1143
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1145
    cmpg-float v16, v9, v11

    if-gez v16, :cond_6

    cmpl-float v16, v9, v4

    if-lez v16, :cond_6

    .line 1146
    move v3, v5

    .line 1147
    move v4, v9

    .line 1151
    :cond_6
    move v10, v15

    .line 1119
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1154
    .end local v9           #h:F
    .end local v15           #there:I
    :cond_7
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1156
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_8

    cmpl-float v16, v9, v4

    if-lez v16, :cond_8

    .line 1157
    move v3, v8

    .line 1158
    move v4, v9

    .line 1161
    :cond_8
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_9

    move/from16 v16, v3

    .line 1175
    :goto_1
    return v16

    .line 1164
    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1166
    .local v6, dir:I
    if-lez v6, :cond_b

    .line 1167
    if-nez v13, :cond_a

    move/from16 v16, v3

    .line 1168
    goto :goto_1

    .line 1170
    :cond_a
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1

    .line 1172
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    move/from16 v16, v3

    .line 1173
    goto :goto_1

    .line 1175
    :cond_c
    add-int/lit8 v16, v13, 0x1

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1
.end method

.method public getOffsetToRightOf(I)I
    .locals 18
    .parameter "offset"

    .prologue
    .line 1184
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 1185
    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1186
    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 1187
    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1189
    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 1190
    add-int/lit8 v8, v8, -0x1

    .line 1192
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .line 1194
    .local v11, horiz:F
    move/from16 v3, p1

    .line 1195
    .local v3, best:I
    const/high16 v4, 0x4f00

    .line 1198
    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1199
    .local v5, candidate:I
    if-lt v5, v14, :cond_1

    if-gt v5, v8, :cond_1

    .line 1200
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1202
    .local v9, h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_1

    cmpg-float v16, v9, v4

    if-gez v16, :cond_1

    .line 1203
    move v3, v5

    .line 1204
    move v4, v9

    .line 1208
    .end local v9           #h:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1209
    if-lt v5, v14, :cond_2

    if-gt v5, v8, :cond_2

    .line 1210
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1212
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_2

    cmpg-float v16, v9, v4

    if-gez v16, :cond_2

    .line 1213
    move v3, v5

    .line 1214
    move v4, v9

    .line 1218
    .end local v9           #h:F
    :cond_2
    move v10, v14

    .line 1219
    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 1220
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .line 1221
    .local v15, there:I
    if-le v15, v8, :cond_3

    .line 1222
    move v15, v8

    .line 1224
    :cond_3
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1226
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_4

    cmpg-float v16, v9, v4

    if-gez v16, :cond_4

    .line 1227
    move v3, v10

    .line 1228
    move v4, v9

    .line 1231
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1232
    if-lt v5, v14, :cond_5

    if-gt v5, v8, :cond_5

    .line 1233
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1235
    cmpl-float v16, v9, v11

    if-lez v16, :cond_5

    cmpg-float v16, v9, v4

    if-gez v16, :cond_5

    .line 1236
    move v3, v5

    .line 1237
    move v4, v9

    .line 1241
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1242
    if-lt v5, v14, :cond_6

    if-gt v5, v8, :cond_6

    .line 1243
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1245
    cmpl-float v16, v9, v11

    if-lez v16, :cond_6

    cmpg-float v16, v9, v4

    if-gez v16, :cond_6

    .line 1246
    move v3, v5

    .line 1247
    move v4, v9

    .line 1251
    :cond_6
    move v10, v15

    .line 1219
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1254
    .end local v9           #h:F
    .end local v15           #there:I
    :cond_7
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1256
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_8

    cmpg-float v16, v9, v4

    if-gez v16, :cond_8

    .line 1257
    move v3, v8

    .line 1258
    move v4, v9

    .line 1261
    :cond_8
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_9

    move/from16 v16, v3

    .line 1275
    :goto_1
    return v16

    .line 1264
    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1266
    .local v6, dir:I
    if-lez v6, :cond_b

    .line 1267
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    move/from16 v16, v3

    .line 1268
    goto :goto_1

    .line 1270
    :cond_a
    add-int/lit8 v16, v13, 0x1

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1

    .line 1272
    :cond_b
    if-nez v13, :cond_c

    move/from16 v16, v3

    .line 1273
    goto :goto_1

    .line 1275
    :cond_c
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .parameter "line"

    .prologue
    .line 1504
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1506
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1507
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1508
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1512
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1513
    .local v2, spanLength:I
    if-lez v2, :cond_0

    .line 1514
    const/4 v4, 0x1

    sub-int v4, v2, v4

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1518
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 16
    .parameter "line"

    .prologue
    const/4 v15, 0x1

    .line 1525
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    .line 1527
    .local v3, dir:I
    const/4 v5, 0x0

    .line 1529
    .local v5, left:I
    const/4 v8, 0x0

    .line 1530
    .local v8, par:Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 1531
    .local v7, off:I
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    sub-int v13, v7, v15

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_1

    .line 1532
    :cond_0
    const/4 v8, 0x1

    .line 1534
    :cond_1
    if-ne v3, v15, :cond_4

    .line 1535
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v12, v0

    if-eqz v12, :cond_4

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v9, v0

    check-cast v9, Landroid/text/Spanned;

    .line 1537
    .local v9, sp:Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v9, v12, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/LeadingMarginSpan;

    .line 1541
    .local v11, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v12, v11

    if-ge v4, v12, :cond_4

    .line 1542
    move v6, v8

    .line 1543
    .local v6, margin:Z
    aget-object v10, v11, v4

    .line 1544
    .local v10, span:Landroid/text/style/LeadingMarginSpan;
    instance-of v12, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v12, :cond_2

    .line 1545
    move-object v0, v10

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object v12, v0

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v2

    .line 1546
    .local v2, count:I
    move v0, v2

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    move v6, v15

    .line 1548
    .end local v2           #count:I
    :cond_2
    :goto_1
    invoke-interface {v10, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v12

    add-int/2addr v5, v12

    .line 1541
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1546
    .restart local v2       #count:I
    :cond_3
    const/4 v12, 0x0

    move v6, v12

    goto :goto_1

    .line 1553
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #margin:Z
    .end local v9           #sp:Landroid/text/Spanned;
    .end local v10           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v11           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_4
    return v5
.end method

.method public final getParagraphRight(I)I
    .locals 10
    .parameter "line"

    .prologue
    .line 1560
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1562
    .local v0, dir:I
    iget v4, p0, Landroid/text/Layout;->mWidth:I

    .line 1564
    .local v4, right:I
    const/4 v3, 0x0

    .line 1565
    .local v3, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1566
    .local v2, off:I
    if-eqz v2, :cond_0

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    .line 1567
    :cond_0
    const/4 v3, 0x1

    .line 1570
    :cond_1
    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    .line 1591
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_2

    .line 1592
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1593
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1597
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_2

    .line 1598
    aget-object v7, v6, v1

    invoke-interface {v7, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    sub-int/2addr v4, v7

    .line 1597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1604
    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_2
    return v4
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 628
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .parameter "offset"

    .prologue
    const/4 v0, 0x1

    .line 637
    invoke-direct {p0, p1, v0, v0}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1450
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1453
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1454
    move/from16 v17, p2

    .line 1455
    .local v17, temp:I
    move/from16 p2, p1

    .line 1456
    move/from16 p1, v17

    .line 1459
    .end local v17           #temp:I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1460
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1462
    .local v15, endline:I
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1463
    .local v6, top:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1465
    .local v7, bottom:I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1466
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    .line 1468
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v2, v0

    move v0, v2

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1470
    .local v18, width:F
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1473
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1474
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1480
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_4

    .line 1481
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1482
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1483
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1480
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1477
    .end local v16           #i:I
    :cond_3
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1486
    .restart local v16       #i:I
    :cond_4
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1487
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1489
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1492
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 1493
    .end local v3           #startline:I
    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1495
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .parameter "wid"

    .prologue
    .line 509
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 514
    return-void
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 2007
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 139
    if-gez p3, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 144
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 145
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 146
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 147
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 148
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 149
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 150
    return-void
.end method

.method public setIsPassword(Z)V
    .locals 0
    .parameter "password"

    .prologue
    .line 2123
    invoke-static {p1}, Landroid/text/Layout;->setPassWord(Z)V

    .line 2124
    return-void
.end method

.method public setIsSplitLineText(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 803
    iput-boolean p1, p0, Landroid/text/Layout;->isSplitLineText:Z

    .line 804
    return-void
.end method
