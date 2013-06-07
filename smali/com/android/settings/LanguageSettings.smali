.class public Lcom/android/settings/LanguageSettings;
.super Landroid/preference/PreferenceActivity;
.source "LanguageSettings.java"


# instance fields
.field private mCheckboxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveHardKeyboard:Z

.field private mInputMethodLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePref:Landroid/preference/Preference;

.field private mLastInputMethodId:Ljava/lang/String;

.field private mLastTickedInputMethodId:Ljava/lang/String;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private selectDefaultIMEListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 55
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 70
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 82
    new-instance v0, Lcom/android/settings/LanguageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LanguageSettings$1;-><init>(Lcom/android/settings/LanguageSettings;)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->selectDefaultIMEListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/LanguageSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    return-object p1
.end method

.method public static getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "key"

    .prologue
    .line 77
    return-object p0
.end method

.method private isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCreateIMM()V
    .locals 22

    .prologue
    .line 126
    const-string v18, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 128
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "default_input_method"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 133
    const-string v18, "keyboard_settings_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 135
    .local v8, keyboardSettingsCategory:Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 136
    new-instance v5, Landroid/preference/CheckBoxPreference;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 137
    .local v5, chkbxPref:Landroid/preference/CheckBoxPreference;
    const-string v18, "hwkeyboard"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 138
    const v18, 0x7f0804db

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 139
    const v18, 0x7f0804dc

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 140
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v5           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    new-instance v14, Landroid/preference/Preference;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 148
    .local v14, selImePreference:Landroid/preference/Preference;
    const-string v18, "select_default_input_method"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 149
    const v18, 0x7f0804de

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->selectDefaultIMEListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodLists:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    const/16 v18, 0x0

    move/from16 v4, v18

    .line 161
    .local v4, N:I
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v4, :cond_8

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 163
    .local v13, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, prefKey:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 166
    .local v9, label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v17

    .line 169
    .local v17, systemIME:Z
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, label2:Ljava/lang/String;
    const-string v3, "com.sec.android.inputmethod.axt9/.AxT9IME"

    .line 172
    .local v3, Axt9IME:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-virtual {v11, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_2

    :cond_1
    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    if-nez v17, :cond_3

    .line 173
    :cond_2
    new-instance v5, Landroid/preference/CheckBoxPreference;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 174
    .restart local v5       #chkbxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodLists:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v5           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_3
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 186
    new-instance v12, Landroid/preference/PreferenceScreen;

    const/16 v18, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    .local v12, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v15

    .line 188
    .local v15, settingsActivity:Ljava/lang/String;
    const-string v18, "/"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    if-gez v18, :cond_4

    .line 189
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 191
    :cond_4
    invoke-virtual {v12, v15}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v12, v9}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 194
    const v18, 0x7f080363

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    :goto_2
    invoke-virtual {v8, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodLists:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v12           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v15           #settingsActivity:Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 159
    .end local v3           #Axt9IME:Ljava/lang/String;
    .end local v4           #N:I
    .end local v6           #i:I
    .end local v9           #label:Ljava/lang/CharSequence;
    .end local v10           #label2:Ljava/lang/String;
    .end local v11           #prefKey:Ljava/lang/String;
    .end local v13           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v17           #systemIME:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v4, v18

    goto/16 :goto_0

    .line 196
    .restart local v3       #Axt9IME:Ljava/lang/String;
    .restart local v4       #N:I
    .restart local v6       #i:I
    .restart local v9       #label:Ljava/lang/CharSequence;
    .restart local v10       #label2:Ljava/lang/String;
    .restart local v11       #prefKey:Ljava/lang/String;
    .restart local v12       #prefScreen:Landroid/preference/PreferenceScreen;
    .restart local v13       #property:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v15       #settingsActivity:Ljava/lang/String;
    .restart local v17       #systemIME:Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080362

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, settingsLabel:Ljava/lang/CharSequence;
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 206
    .end local v3           #Axt9IME:Ljava/lang/String;
    .end local v9           #label:Ljava/lang/CharSequence;
    .end local v10           #label2:Ljava/lang/String;
    .end local v11           #prefKey:Ljava/lang/String;
    .end local v12           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v13           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v15           #settingsActivity:Ljava/lang/String;
    .end local v16           #settingsLabel:Ljava/lang/CharSequence;
    .end local v17           #systemIME:Z
    :cond_8
    return-void
.end method

.method private setEnableInputMethods(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/LanguageSettings;->mInputMethodLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/settings/LanguageSettings;->mInputMethodLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const-string v4, "phone_language"

    .line 94
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Lcom/android/settings/LanguageSettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "phone_language"

    invoke-virtual {p0, v4}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 106
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "hardkeyboard_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mInputMethodLists:Ljava/util/List;

    .line 117
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->onCreateIMM()V

    .line 118
    return-void

    .line 102
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    const-string v1, "phone_language"

    invoke-virtual {p0, v4}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto :goto_0

    .line 110
    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    goto :goto_1
.end method

.method protected onPause()V
    .locals 20

    .prologue
    .line 303
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v17, 0x100

    move-object v0, v4

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 306
    .local v4, builder:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v17, 0x100

    move-object v0, v5

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 308
    .local v5, disabledSysImes:Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    .line 309
    .local v6, firstEnabled:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 310
    .local v3, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v3, :cond_8

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 312
    .local v13, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 314
    .local v12, pref:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 315
    .local v7, hasIt:Z
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v14

    .line 316
    .local v14, systemIme:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 317
    .local v10, label:Ljava/lang/CharSequence;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 319
    .local v11, label2:Ljava/lang/String;
    const-string v2, "com.sec.android.inputmethod.axt9/.AxT9IME"

    .line 320
    .local v2, Axt9IME:Ljava/lang/String;
    const/16 v17, 0x1

    move v0, v3

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_2

    :cond_1
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 322
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_3

    const/16 v17, 0x3a

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    :cond_3
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    if-gez v6, :cond_4

    .line 325
    move v6, v8

    .line 332
    :cond_4
    :goto_1
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_6

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 333
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_5

    const-string v17, ":"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_5
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 327
    :cond_7
    if-eqz v7, :cond_4

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_1

    .line 339
    .end local v2           #Axt9IME:Ljava/lang/String;
    .end local v7           #hasIt:Z
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #label:Ljava/lang/CharSequence;
    .end local v11           #label2:Ljava/lang/String;
    .end local v12           #pref:Landroid/preference/CheckBoxPreference;
    .end local v13           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v14           #systemIme:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 340
    :cond_9
    if-ltz v6, :cond_c

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 347
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "enabled_input_methods"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "disabled_system_input_methods"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "default_input_method"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 356
    .local v15, tmpDefaultIME:Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 357
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 358
    .local v16, tmpEnabledIMEs:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "default_input_method"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_3
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    .end local v16           #tmpEnabledIMEs:Ljava/lang/String;
    :cond_b
    return-void

    .line 343
    .end local v15           #tmpDefaultIME:Ljava/lang/String;
    :cond_c
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_2

    .line 359
    .restart local v15       #tmpDefaultIME:Ljava/lang/String;
    .restart local v16       #tmpEnabledIMEs:Ljava/lang/String;
    :cond_d
    const-string v19, ""

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 21
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 378
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 379
    const/4 v15, 0x0

    .line 494
    :goto_0
    return v15

    .line 382
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    move v15, v0

    if-eqz v15, :cond_a

    .line 383
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v6, v0

    .line 384
    .local v6, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/LanguageSettings;->getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, id:Ljava/lang/String;
    const-string v15, "hwkeyboard"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 387
    const-string v15, "LanguageSettings"

    const-string v16, "onPreferenceTreeClick : hwkeyboard checkbox is clicked"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v15

    if-nez v15, :cond_2

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "onscreen_keypad"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "onscreen_keypad"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v6, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 395
    const v15, 0x7f0804dc

    invoke-virtual {v6, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 396
    const-string v15, "LanguageSettings"

    const-string v16, "onPreferenceTreeClick : hwkeyboard checkbox is clicked : chkPref.isChecked() is false"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->setEnableInputMethods(Z)V

    .line 416
    :goto_2
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto :goto_0

    .line 392
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "onscreen_keypad"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "onscreen_keypad"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    :goto_3
    invoke-virtual {v6, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    const v15, 0x7f0804dd

    invoke-virtual {v6, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 409
    const-string v15, "LanguageSettings"

    const-string v16, "onPreferenceTreeClick : hwkeyboard checkbox is clicked : chkPref.isChecked() is true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->setEnableInputMethods(Z)V

    goto :goto_2

    .line 405
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    .line 419
    :cond_4
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 420
    const/4 v13, 0x0

    .line 421
    .local v13, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    .line 422
    .local v4, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    if-ge v8, v4, :cond_6

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 424
    .local v10, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 425
    move-object v13, v10

    .line 426
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 428
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 429
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto/16 :goto_0

    .line 422
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 433
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 434
    if-nez v13, :cond_7

    .line 435
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto/16 :goto_0

    .line 437
    :cond_7
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x1040014

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x1080027

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f080347

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LanguageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x104000a

    new-instance v17, Lcom/android/settings/LanguageSettings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/LanguageSettings$3;-><init>(Lcom/android/settings/LanguageSettings;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/high16 v16, 0x104

    new-instance v17, Lcom/android/settings/LanguageSettings$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings$2;-><init>(Lcom/android/settings/LanguageSettings;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 465
    .local v7, d:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 490
    .end local v4           #N:I
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #d:Landroid/app/AlertDialog;
    .end local v8           #i:I
    .end local v9           #id:Ljava/lang/String;
    .end local v13           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->onPause()V

    .line 494
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto/16 :goto_0

    .line 466
    .restart local v6       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v9       #id:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 467
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    goto :goto_5

    .line 469
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v9           #id:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    move v15, v0

    if-eqz v15, :cond_8

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v15

    if-nez v15, :cond_8

    .line 471
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v12, v0

    .line 472
    .local v12, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, activityName:Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "."

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 475
    .local v11, packageName:Ljava/lang/String;
    const-string v15, "/"

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 476
    .local v14, slash:I
    if-lez v14, :cond_b

    .line 477
    const/4 v15, 0x0

    invoke-virtual {v5, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 478
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 480
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 481
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v8, i:Landroid/content/Intent;
    invoke-virtual {v8, v11, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_5
.end method

.method protected onResume()V
    .locals 15

    .prologue
    .line 218
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 219
    const-string v12, "LanguageSettings"

    const-string v13, "onResume : is called"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 222
    .local v3, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enabled_input_methods"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, enabledStr:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 225
    iget-object v11, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 226
    .local v11, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v11, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 227
    :goto_0
    invoke-virtual {v11}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 228
    invoke-virtual {v11}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v11           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    iget-boolean v12, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v12, :cond_1

    .line 233
    const-string v12, "hwkeyboard"

    invoke-virtual {p0, v12}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 234
    .local v10, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v10, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 236
    .local v9, newConfig:Landroid/content/res/Configuration;
    iget v0, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 239
    .local v0, KeyboardHidden:I
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "onscreen_keypad"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    move v7, v12

    .line 241
    .local v7, isKeyboardOpen:Z
    :goto_1
    if-nez v7, :cond_4

    .line 242
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    const v12, 0x7f0804dc

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 246
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/android/settings/LanguageSettings;->setEnableInputMethods(Z)V

    .line 262
    .end local v0           #KeyboardHidden:I
    .end local v7           #isKeyboardOpen:Z
    .end local v9           #newConfig:Landroid/content/res/Configuration;
    .end local v10           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    :goto_2
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    .line 263
    .local v1, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v1, :cond_5

    .line 264
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, id:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 267
    .restart local v10       #pref:Landroid/preference/CheckBoxPreference;
    if-eqz v10, :cond_2

    .line 268
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 239
    .end local v1           #N:I
    .end local v5           #i:I
    .end local v6           #id:Ljava/lang/String;
    .restart local v0       #KeyboardHidden:I
    .restart local v9       #newConfig:Landroid/content/res/Configuration;
    :cond_3
    const/4 v12, 0x0

    move v7, v12

    goto :goto_1

    .line 250
    .restart local v7       #isKeyboardOpen:Z
    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    const v12, 0x7f0804dd

    invoke-virtual {v10, v12}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 254
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/settings/LanguageSettings;->setEnableInputMethods(Z)V

    goto :goto_2

    .line 271
    .end local v0           #KeyboardHidden:I
    .end local v7           #isKeyboardOpen:Z
    .end local v9           #newConfig:Landroid/content/res/Configuration;
    .end local v10           #pref:Landroid/preference/CheckBoxPreference;
    .restart local v1       #N:I
    .restart local v5       #i:I
    :cond_5
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 273
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v12, :cond_6

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 275
    .local v2, conf:Landroid/content/res/Configuration;
    iget-object v12, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v13, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, locale:Ljava/lang/String;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_6

    .line 295
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 296
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v12, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    .end local v2           #conf:Landroid/content/res/Configuration;
    .end local v8           #locale:Ljava/lang/String;
    :cond_6
    return-void
.end method
