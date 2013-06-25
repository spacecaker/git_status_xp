.class public Lcom/samsung/android/text/Semitic;
.super Ljava/lang/Object;
.source "Semitic.java"


# static fields
.field public static final BIDI_REORDER_ONLY:I = 0x0

.field public static final BIDI_SHAPE:I = 0x1

.field public static final DIR_REQUEST_DEFAULT_LTR:I = -0x2

.field public static final DIR_REQUEST_DEFAULT_RTL:I = -0x1

.field public static final DIR_REQUEST_LTR:I = 0x0

.field public static final DIR_REQUEST_RTL:I = 0x1

.field public static final ISO639_ARABIC:Ljava/lang/String; = "ar"

.field public static final ISO639_HEBREW:Ljava/lang/String; = "he"

.field public static final ISO639_HEBREW_FORMER:Ljava/lang/String; = "iw"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO639_PERSIAN:Ljava/lang/String; = "fa"

.field public static final ISO639_URDU:Ljava/lang/String; = "ur"

.field public static final ISO639_YIDDISH:Ljava/lang/String; = "yi"

.field public static final ISO639_YIDDISH_FORMER:Ljava/lang/String; = "ji"

.field public static final LRE:C = '\u202a'

.field public static final LRM:C = '\u200e'

.field public static final LRO:C = '\u202d'

.field public static final LTR:C = '\u200e'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PDF:C = '\u202c'

.field public static final PHONE:Ljava/util/regex/Pattern; = null

.field private static final REPLACE_PHONE:Ljava/lang/String; = "\u200e$0\u200e"

.field public static final RLE:C = '\u202b'

.field public static final RLM:C = '\u200f'

.field public static final RLO:C = '\u202e'

.field public static final RTL:C = '\u200f'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SHORTCODE:Ljava/lang/String; = "(\\*[0-9]{2,6})"

.field private static final TAG:Ljava/lang/String; = "Semitic"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\\*[0-9]{2,6})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/text/Semitic;->PHONE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidiReorder(I[CI[CI)I
    .locals 1
    .parameter "dir"
    .parameter "chs"
    .parameter "n"
    .parameter "res"
    .parameter "flags"

    .prologue
    .line 274
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/text/Semitic;->bidiReorderInternal(I[CI[CI)I

    move-result v0

    return v0
.end method

.method private static native bidiReorderInternal(I[CI[CI)I
.end method

.method public static hasArabic(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 207
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 208
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/text/Semitic;->isArabic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v2, 0x1

    .line 213
    .end local v0           #i:I
    .end local v1           #len:I
    :goto_1
    return v2

    .line 207
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static hasHebrew(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 226
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 227
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/text/Semitic;->isHebrew(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v2, 0x1

    .line 232
    .end local v0           #i:I
    .end local v1           #len:I
    :goto_1
    return v2

    .line 226
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isArabic(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 135
    invoke-static {p0}, Lcom/samsung/android/text/Semitic;->isArabic(I)Z

    move-result v0

    return v0
.end method

.method public static isArabic(I)Z
    .locals 3
    .parameter "codePoint"

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 147
    .local v0, block:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 164
    :goto_0
    return v1

    .line 150
    :cond_0
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    move v1, v2

    .line 151
    goto :goto_0

    .line 153
    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    const/16 v1, 0x750

    if-lt p0, v1, :cond_3

    const/16 v1, 0x77f

    if-gt p0, v1, :cond_3

    move v1, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_3
    const v1, 0x10a60

    if-lt p0, v1, :cond_4

    const v1, 0x10a7f

    if-gt p0, v1, :cond_4

    move v1, v2

    .line 162
    goto :goto_0

    .line 164
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHebrew(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 175
    invoke-static {p0}, Lcom/samsung/android/text/Semitic;->isHebrew(I)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(I)Z
    .locals 3
    .parameter "codePoint"

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 187
    .local v0, block:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 194
    :goto_0
    return v1

    .line 191
    :cond_0
    const v1, 0xfb1d

    if-lt p0, v1, :cond_1

    const v1, 0xfb4f

    if-gt p0, v1, :cond_1

    move v1, v2

    .line 192
    goto :goto_0

    .line 194
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/text/Semitic;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 2
    .parameter "locale"

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, iso639:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "he"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "yi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ji"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 245
    .local v1, first:I
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    .line 246
    .local v0, directionality:B
    if-eq v0, v4, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    :cond_0
    move v2, v4

    .line 249
    .end local v0           #directionality:B
    .end local v1           #first:I
    :goto_0
    return v2

    .restart local v0       #directionality:B
    .restart local v1       #first:I
    :cond_1
    move v2, v3

    .line 246
    goto :goto_0

    .end local v0           #directionality:B
    .end local v1           #first:I
    :cond_2
    move v2, v3

    .line 249
    goto :goto_0
.end method

.method public static toBidiPhone(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/samsung/android/text/Semitic;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/samsung/android/text/Semitic;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "\u200e$0\u200e"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
