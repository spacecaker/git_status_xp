.class public Landroid/preference/MultiSelectListPreference;
.super Landroid/preference/ListPreference;
.source "MultiSelectListPreference.java"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "OV=I=XseparatorX=I=VO"


# instance fields
.field private mClickedDialogEntryIndices:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Landroid/preference/MultiSelectListPreference;)[Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mClickedDialogEntryIndices:[Z

    return-object v0
.end method

.method public static parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private restoreCheckedEntries()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/MultiSelectListPreference;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    array-length v2, v1

    move v3, v7

    :goto_0
    if-lt v3, v2, :cond_1

    .line 90
    :cond_0
    return-void

    .line 76
    :cond_1
    aget-object v4, v1, v3

    move v5, v7

    .line 77
    :goto_1
    array-length v6, v0

    if-lt v5, v6, :cond_2

    .line 76
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_2
    aget-object v6, v0, v5

    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    iget-object v4, p0, Landroid/preference/MultiSelectListPreference;->mClickedDialogEntryIndices:[Z

    aput-boolean v8, v4, v5

    goto :goto_2

    .line 77
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v1, v7

    .line 86
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 87
    iget-object v2, p0, Landroid/preference/MultiSelectListPreference;->mClickedDialogEntryIndices:[Z

    aput-boolean v8, v2, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 4
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Landroid/preference/MultiSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v3, p0, Landroid/preference/MultiSelectListPreference;->mClickedDialogEntryIndices:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 101
    const-string v3, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 98
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 47
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v2, " requires an entries array and an entryValues array which are both the same length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Landroid/preference/MultiSelectListPreference;->mClickedDialogEntryIndices:[Z

    .line 54
    invoke-direct {p0}, Landroid/preference/MultiSelectListPreference;->restoreCheckedEntries()V

    .line 55
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mClickedDialogEntryIndices:[Z

    new-instance v2, Landroid/preference/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/MultiSelectListPreference$1;-><init>(Landroid/preference/MultiSelectListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    return-void
.end method
