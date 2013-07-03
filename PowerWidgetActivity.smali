.class public Lcom/lidroid/parts/PowerWidgetActivity;
.super Landroid/preference/PreferenceActivity;
.source "PowerWidgetActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTONS_CATEGORY:Ljava/lang/String; = "pref_buttons"

.field private static final EXP_BRIGHTNESS_MODE:Ljava/lang/String; = "pref_brightness_mode"

.field private static final EXP_RING_MODE:Ljava/lang/String; = "pref_ring_mode"

.field private static final SELECT_BUTTON_KEY_PREFIX:Ljava/lang/String; = "pref_button_"

.field private static final TAG:Ljava/lang/String; = "PowerWidgetActivity"


# instance fields
.field mBrightnessMode:Landroid/preference/ListPreference;

.field private mCheckBoxPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRingMode:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mCheckBoxPrefs:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v6, 0x7f080051

    invoke-virtual {p0, v6}, Lcom/lidroid/parts/PowerWidgetActivity;->setTitle(I)V

    .line 55
    const v6, 0x7f040002

    invoke-virtual {p0, v6}, Lcom/lidroid/parts/PowerWidgetActivity;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/lidroid/parts/PowerWidgetActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 59
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const-string v6, "pref_brightness_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mBrightnessMode:Landroid/preference/ListPreference;

    .line 60
    iget-object v6, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mBrightnessMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v6, "pref_ring_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mRingMode:Landroid/preference/ListPreference;

    .line 62
    iget-object v6, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mRingMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const-string v6, "pref_buttons"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 67
    .local v4, prefButtons:Landroid/preference/PreferenceCategory;
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 68
    invoke-virtual {v4, v8}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 71
    iget-object v6, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mCheckBoxPrefs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 74
    invoke-static {p0}, LROM/Control/util/PowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LROM/Control/util/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    .local v1, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, LROM/Control/util/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LROM/Control/util/PowerWidgetUtil$ButtonInfo;

    .line 79
    .local v0, button:LROM/Control/util/PowerWidgetUtil$ButtonInfo;
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 82
    .local v2, cb:Landroid/preference/CheckBoxPreference;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pref_button_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, LROM/Control/util/PowerWidgetUtil$ButtonInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, LROM/Control/util/PowerWidgetUtil$ButtonInfo;->getTitleResId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 88
    invoke-virtual {v0}, LROM/Control/util/PowerWidgetUtil$ButtonInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    :goto_1
    iget-object v6, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mCheckBoxPrefs:Ljava/util/HashMap;

    invoke-virtual {v0}, LROM/Control/util/PowerWidgetUtil$ButtonInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v2, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 100
    .end local v0           #button:LROM/Control/util/PowerWidgetUtil$ButtonInfo;
    .end local v2           #cb:Landroid/preference/CheckBoxPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 127
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    .local v0, value:I
    iget-object v1, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mBrightnessMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/lidroid/parts/PowerWidgetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_brightness_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mRingMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/lidroid/parts/PowerWidgetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_ring_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, buttonWasModified:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lidroid/parts/PowerWidgetActivity;->mCheckBoxPrefs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/preference/CheckBoxPreference;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v4, :cond_0

    .line 112
    const/4 v1, 0x1

    goto :goto_0

    .line 116
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/preference/CheckBoxPreference;Ljava/lang/String;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 118
    invoke-static {p0}, LROM/Control/util/PowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, LROM/Control/util/PowerWidgetUtil;->getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LROM/Control/util/PowerWidgetUtil;->mergeInNewButtonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, LROM/Control/util/PowerWidgetUtil;->saveCurrentButtons(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    const/4 v4, 0x1

    .line 123
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
