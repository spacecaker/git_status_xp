.class public Lcom/android/settings/HideSetting;
.super Ljava/lang/Object;
.source "HideSetting.java"


# static fields
.field private static instance:Lcom/android/settings/HideSetting;

.field private static props:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/android/settings/HideSetting;->props:[Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/android/settings/HideSetting;->instance:Lcom/android/settings/HideSetting;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/android/settings/HideSetting;->getListOfProps()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/HideSetting;->props:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static Instance()Lcom/android/settings/HideSetting;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/settings/HideSetting;->instance:Lcom/android/settings/HideSetting;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/settings/HideSetting;

    invoke-direct {v0}, Lcom/android/settings/HideSetting;-><init>()V

    sput-object v0, Lcom/android/settings/HideSetting;->instance:Lcom/android/settings/HideSetting;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/settings/HideSetting;->instance:Lcom/android/settings/HideSetting;

    return-object v0
.end method

.method private getListOfProps()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 63
    new-instance v2, Ljava/io/File;

    const-string v4, "/system"

    const-string v5, "default.prop"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v6

    .line 69
    :goto_0
    return-object v4

    .line 65
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 67
    .local v0, br:Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "samsung.settings.hide.option"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 68
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/IOException;
    move-object v4, v6

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_2
    move-object v4, v6

    .line 69
    goto :goto_0
.end method


# virtual methods
.method public hideSettings(Landroid/preference/PreferenceActivity;)V
    .locals 8
    .parameter "preferenceActivity"

    .prologue
    const-string v7, "SPRC"

    .line 44
    if-nez p1, :cond_1

    .line 45
    const-string v5, "SPRC"

    const-string v5, "SPRC: package: [com.android.settings] class: [HideSetting] problem: PreferenceActivity is null"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v5, Lcom/android/settings/HideSetting;->props:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 47
    sget-object v0, Lcom/android/settings/HideSetting;->props:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 48
    .local v4, s:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 49
    .local v3, preference:Landroid/preference/Preference;
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 51
    const-string v5, "SPRC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPRC: package: [com.android.settings] class: [HideSetting] removing setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #preference:Landroid/preference/Preference;
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    const-string v5, "SPRC"

    const-string v5, "SPRC: package: [com.android.settings] class: [HideSetting] problem: props not loaded [public void hideSettings(PreferenceActivity preferenceActivity)]"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
