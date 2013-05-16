.class public Lcom/android/systemui/statusbar/phone/NavbarEditor;
.super Ljava/lang/Object;
.source "NavbarEditor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;,
        Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    }
.end annotation


# static fields
.field public static final NAVBAR_ALWAYS_MENU:Ljava/lang/String; = "menu1"

.field public static final NAVBAR_BACK:Ljava/lang/String; = "back"

.field public static final NAVBAR_CONDITIONAL_MENU:Ljava/lang/String; = "menu0"

.field public static final NAVBAR_EMPTY:Ljava/lang/String; = "empty"

.field public static final NAVBAR_HOME:Ljava/lang/String; = "home"

.field public static final NAVBAR_MENU_BIG:Ljava/lang/String; = "menu2"

.field public static final NAVBAR_RECENT:Ljava/lang/String; = "recent"

.field public static final NAVBAR_SEARCH:Ljava/lang/String; = "search"

.field public static final buttonMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final smallButtonIds:[I

.field protected static visibleCount:I


# instance fields
.field mCheckLongPress:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mDialog:Landroid/app/AlertDialog;

.field mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLongPressed:Z

.field private mParent:Landroid/view/ViewGroup;

.field mVertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const v12, 0x7f080042

    const/16 v11, 0x52

    const/4 v10, 0x0

    const v9, 0x7f020030

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    .line 57
    sput v13, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 88
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    const-string v8, "home"

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const v1, 0x7f080084

    const v2, 0x7f080041

    const/4 v3, 0x3

    const v4, 0x7f020029

    const v5, 0x7f02002a

    const v6, 0x7f020029

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(IIIIII)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    const-string v8, "menu0"

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const v1, 0x7f080089

    const v5, 0x7f020033

    move v2, v12

    move v3, v11

    move v4, v9

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(IIIIII)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    const-string v8, "menu1"

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const v1, 0x7f08008a

    const v5, 0x7f020033

    move v2, v12

    move v3, v11

    move v4, v9

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(IIIIII)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    const-string v8, "menu2"

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const v1, 0x7f08008b

    const v4, 0x7f020031

    const v5, 0x7f020032

    move v2, v12

    move v3, v11

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(IIIIII)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    const-string v8, "back"

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const v1, 0x7f080087

    const v2, 0x7f080040

    const v4, 0x7f020020

    const v5, 0x7f020024

    const v6, 0x7f020025

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(IIIIII)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    const-string v8, "search"

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const v1, 0x7f080086

    const v2, 0x7f080040

    const/16 v3, 0x54

    const v4, 0x7f020039

    const v5, 0x7f02003a

    const v6, 0x7f02003b

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(IIIIII)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    const-string v8, "recent"

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const v1, 0x7f080085

    const v2, 0x7f080043

    const v4, 0x7f020035

    const v5, 0x7f020036

    const v6, 0x7f020037

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(IIIIII)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavbarEditor;->buttonMap:Ljava/util/LinkedHashMap;

    const-string v8, "empty"

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const v1, 0x7f080088

    const v2, 0x7f080081

    const v4, 0x7f02001c

    const v5, 0x7f02001d

    const v6, 0x7f02001e

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(IIIIII)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void

    .line 49
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0xet 0x7ft
        0x16t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "parent"
    .parameter "orientation"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x7f0e0010

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0e0012

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0e0013

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0e0014

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0e0015

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f0e0016

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    .line 116
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    .line 117
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustPadding()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 339
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    const v9, 0x7f0e0011

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 340
    .local v7, viewParent:Landroid/view/ViewGroup;
    sget v5, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 341
    .local v5, sCount:I
    const/4 v6, 0x0

    .local v6, v:I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 342
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, cView:Landroid/view/View;
    instance-of v8, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v8, :cond_1

    .line 344
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 345
    .local v3, nextPadding:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 346
    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 347
    .local v2, nextKey:Landroid/view/View;
    const-string v4, "empty"

    .line 348
    .local v4, nextTag:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #nextTag:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 351
    .restart local v4       #nextTag:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, curTag:Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    const-string v8, "empty"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 353
    const-string v8, "empty"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 354
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :goto_1
    add-int/lit8 v5, v5, -0x1

    .line 341
    .end local v1           #curTag:Ljava/lang/String;
    .end local v2           #nextKey:Landroid/view/View;
    .end local v3           #nextPadding:Landroid/view/View;
    .end local v4           #nextTag:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 356
    .restart local v1       #curTag:Ljava/lang/String;
    .restart local v2       #nextKey:Landroid/view/View;
    .restart local v3       #nextPadding:Landroid/view/View;
    .restart local v4       #nextTag:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    if-le v5, v8, :cond_3

    .line 357
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 359
    :cond_3
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 364
    :cond_4
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 369
    .end local v0           #cView:Landroid/view/View;
    .end local v1           #curTag:Ljava/lang/String;
    .end local v2           #nextKey:Landroid/view/View;
    .end local v3           #nextPadding:Landroid/view/View;
    .end local v4           #nextTag:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private findInterceptingViewIndex(FLandroid/view/View;)I
    .locals 7
    .parameter "pos"
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 138
    .local v1, location:[I
    const/4 v0, 0x0

    .local v0, cc:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 139
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, tmpV:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 142
    if-ne v2, p2, :cond_1

    .line 138
    .end local v2           #tmpV:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .restart local v2       #tmpV:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v3, :cond_2

    aget v3, v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    aget v3, v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    .line 151
    .end local v0           #cc:I
    .end local v2           #tmpV:Landroid/view/View;
    :goto_1
    return v0

    .line 146
    .restart local v0       #cc:I
    .restart local v2       #tmpV:Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v3, :cond_0

    aget v3, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    aget v3, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 151
    .end local v2           #tmpV:Landroid/view/View;
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private switchId(IILandroid/view/View;)V
    .locals 5
    .parameter "to"
    .parameter "from"
    .parameter "view"

    .prologue
    .line 262
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, tView:Landroid/view/View;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 264
    .local v1, screenLoc:[I
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 265
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 266
    .local v0, a:Landroid/view/ViewGroup;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 268
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    aget v4, v1, v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 273
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-static {v3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 274
    return-void

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aget v4, v1, v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method final dismissDialog()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 533
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v11, 0x2

    const/high16 v12, 0x4000

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 169
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v10

    .line 172
    :cond_1
    const/4 v3, 0x0

    .line 173
    .local v3, curPos:F
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_3

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 178
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 179
    new-array v5, v11, [I

    .line 180
    .local v5, screenLoc:[I
    invoke-virtual {p1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 181
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 183
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_4

    .line 184
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    aget v10, v5, v10

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 188
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v5           #screenLoc:[I
    :cond_2
    :goto_3
    move v10, v9

    .line 251
    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    goto :goto_1

    .line 186
    .restart local v5       #screenLoc:[I
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    aget v10, v5, v9

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 189
    .end local v5           #screenLoc:[I
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v11, :cond_a

    .line 190
    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 191
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v8, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 196
    .local v7, viewParent:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 197
    .local v2, buttonSize:F
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_8

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v2, v8

    .line 203
    :goto_4
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    add-int/2addr v8, v11

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-gtz v8, :cond_0

    div-float v8, v2, v12

    sub-float v8, v3, v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v8, v8, v11

    if-lez v8, :cond_0

    :cond_6
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v11

    add-int/2addr v8, v11

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-gtz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-ltz v8, :cond_0

    .line 207
    :cond_7
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_9

    .line 208
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    div-float v11, v2, v12

    sub-float/2addr v8, v11

    invoke-virtual {p1, v8}, Landroid/view/View;->setX(F)V

    .line 212
    :goto_5
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->findInterceptingViewIndex(FLandroid/view/View;)I

    move-result v0

    .line 213
    .local v0, affectedViewPosition:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    .line 216
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-direct {p0, v8, v0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->switchId(IILandroid/view/View;)V

    goto/16 :goto_3

    .line 200
    .end local v0           #affectedViewPosition:I
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v2, v8

    goto :goto_4

    .line 210
    :cond_9
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    div-float v11, v2, v12

    sub-float/2addr v8, v11

    invoke-virtual {p1, v8}, Landroid/view/View;->setY(F)V

    goto :goto_5

    .line 217
    .end local v2           #buttonSize:F
    .end local v7           #viewParent:Landroid/view/ViewGroup;
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v9, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v11, 0x3

    if-ne v8, v11, :cond_2

    .line 218
    :cond_b
    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 219
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p1, v8}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    if-nez v8, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string v11, "home"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 221
    new-instance v4, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;

    sget-object v8, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v8, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-eqz v8, :cond_c

    move v8, v9

    :goto_6
    invoke-direct {v4, p0, v8}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;Z)V

    .line 222
    .local v4, list:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    const v11, 0x7f080083

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    new-instance v8, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;

    invoke-direct {v8, p0, p1, v4}, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;)V

    invoke-virtual {v1, v4, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string v11, "Cancel"

    new-instance v12, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V

    invoke-virtual {v8, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    .line 236
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v11, 0x7d3

    invoke-virtual {v8, v11}, Landroid/view/Window;->setType(I)V

    .line 237
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 238
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 239
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    move v10, v9

    .line 240
    goto/16 :goto_0

    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #list:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
    :cond_c
    move v8, v10

    .line 221
    goto :goto_6

    .line 242
    :cond_d
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 245
    .local v6, vParent:Landroid/view/ViewGroup;
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v8, :cond_e

    .line 246
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-virtual {p1, v8}, Landroid/view/View;->setX(F)V

    goto/16 :goto_3

    .line 248
    :cond_e
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-virtual {p1, v8}, Landroid/view/View;->setY(F)V

    goto/16 :goto_3
.end method

.method protected reInflate()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    const v1, 0x7f030004

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected saveKeys()V
    .locals 8

    .prologue
    .line 282
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    const v6, 0x7f0e0011

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v4, saveValue:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 285
    .local v0, delim:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 286
    .local v3, idMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v5, :cond_0

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 287
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 288
    .local v2, id:I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v0, "|"

    .line 290
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    .end local v2           #id:I
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nav_buttons"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    return-void
.end method

.method protected setupListeners()V
    .locals 3

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    .local v1, id:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 128
    .end local v1           #id:I
    :cond_0
    return-void
.end method

.method protected updateKeys()V
    .locals 11

    .prologue
    .line 314
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "nav_buttons"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, saved:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 316
    const-string v8, "empty|back|home|recent|empty|menu0"

    .line 318
    :cond_0
    const/4 v2, 0x0

    .line 319
    .local v2, cc:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 320
    .local v5, idMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v9, :cond_1

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 321
    :cond_1
    const/4 v9, 0x0

    sput v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 322
    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_3

    aget-object v1, v0, v4

    .line 323
    .local v1, buttons:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 324
    .local v3, curView:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    sget-object v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->smallButtonIds:[I

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    .line 325
    .local v6, isSmallButton:Z
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    invoke-virtual {v3, v1, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Ljava/lang/String;Z)V

    .line 326
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTag()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v6, :cond_2

    .line 327
    sget v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 329
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    .end local v1           #buttons:Ljava/lang/String;
    .end local v3           #curView:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .end local v6           #isSmallButton:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->adjustPadding()V

    .line 332
    return-void
.end method

.method protected updateLowLights(Landroid/view/View;)V
    .locals 8
    .parameter "current"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 372
    const v5, 0x7f0e0019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 373
    .local v1, lowLights:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 374
    .local v2, totalViews:I
    sget v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->visibleCount:I

    .line 375
    .local v4, visibleCount:I
    const/4 v3, 0x0

    .local v3, v:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 376
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 377
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, blank:Landroid/view/View;
    if-gtz v4, :cond_1

    .line 379
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .end local v0           #blank:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    .restart local v0       #blank:Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 385
    add-int/lit8 v4, v4, -0x1

    .line 386
    if-lez v4, :cond_2

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 388
    :cond_2
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 394
    .end local v0           #blank:Landroid/view/View;
    :cond_3
    return-void
.end method
