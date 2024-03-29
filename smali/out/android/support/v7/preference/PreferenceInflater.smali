.class Landroid/support/v7/preference/PreferenceInflater;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field private static final CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mDefaultPackages:[Ljava/lang/String;

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceManager;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p2}, Landroid/support/v7/preference/PreferenceInflater;->init(Landroid/support/v7/preference/PreferenceManager;)V

    return-void
.end method

.method private createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .registers 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 214
    sget-object v0, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    if-nez v0, :cond_72

    .line 220
    :try_start_b
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz p2, :cond_5b

    .line 222
    array-length v2, p2

    if-nez v2, :cond_17

    goto :goto_5b

    .line 226
    :cond_17
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1b
    if-ge v3, v2, :cond_38

    aget-object v6, p2, v3
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_1f} :catch_70
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_6e

    .line 228
    :try_start_1f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_32} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_6e

    move-object v4, v6

    goto :goto_38

    :catch_34
    move-exception v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_38
    :goto_38
    if-nez v4, :cond_5f

    if-nez v5, :cond_5a

    .line 236
    :try_start_3c
    new-instance p2, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Error inflating class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 240
    :cond_5a
    throw v5

    .line 223
    :cond_5b
    :goto_5b
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 244
    :cond_5f
    sget-object p2, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 246
    sget-object p2, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :catch_6e
    move-exception p2

    goto :goto_7d

    :catch_70
    move-exception p1

    goto :goto_9e

    .line 249
    :cond_72
    :goto_72
    iget-object p2, p0, Landroid/support/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 250
    aput-object p3, p2, v1

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/Preference;
    :try_end_7c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_7c} :catch_70
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_7c} :catch_6e

    return-object p2

    .line 257
    :goto_7d
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Error inflating class "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 260
    throw v0

    .line 255
    :goto_9e
    throw p1
.end method

.method private createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .registers 6

    const/4 v0, -0x1

    const/16 v1, 0x2e

    .line 284
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 285
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    goto :goto_13

    :cond_e
    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v0
    :try_end_13
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_13} :catch_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    .line 303
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Error inflating class "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 307
    throw v1

    :catch_36
    move-exception v0

    .line 296
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Error inflating class (not found)"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 300
    throw v1

    :catch_58
    move-exception p1

    .line 293
    throw p1
.end method

.method private init(Landroid/support/v7/preference/PreferenceManager;)V
    .registers 3

    .line 64
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceInflater;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    const-string p1, "android.support.v14.preference."

    const-string v0, "android.support.v7.preference."

    .line 65
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceInflater;->setDefaultPackages([Ljava/lang/String;)V

    return-void
.end method

.method private onMergeRoots(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/PreferenceGroup;
    .registers 3
    .param p2    # Landroid/support/v7/preference/PreferenceGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_8

    .line 187
    iget-object p1, p0, Landroid/support/v7/preference/PreferenceInflater;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    return-object p2

    :cond_8
    return-object p1
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 320
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    .line 321
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_77

    :cond_11
    const/4 v2, 0x1

    if-eq v1, v2, :cond_77

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    goto :goto_4

    .line 327
    :cond_18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    .line 329
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 333
    :try_start_24
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_34

    .line 341
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_4

    :catch_34
    move-exception p1

    .line 335
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p3, "Error parsing preference"

    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 338
    throw p2

    :cond_40
    const-string v2, "extra"

    .line 342
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "extra"

    .line 344
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 343
    invoke-virtual {v1, v2, p3, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 346
    :try_start_59
    invoke-static {p1}, Landroid/support/v7/preference/PreferenceInflater;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_4

    :catch_5d
    move-exception p1

    .line 348
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p3, "Error parsing preference"

    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 351
    throw p2

    .line 354
    :cond_69
    invoke-direct {p0, v1, p3}, Landroid/support/v7/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 355
    move-object v2, p2

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addItemFromInflater(Landroid/support/v7/preference/Preference;)V

    .line 356
    invoke-direct {p0, p1, v1, p3}, Landroid/support/v7/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    goto :goto_4

    :cond_77
    return-void
.end method

.method private static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 367
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 369
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-gt v1, v0, :cond_4

    :cond_14
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultPackages()[Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public inflate(ILandroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;
    .registers 4
    .param p2    # Landroid/support/v7/preference/PreferenceGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 112
    :try_start_c
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;

    move-result-object p2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 114
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p2

    :catchall_14
    move-exception p2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p2
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;
    .registers 8
    .param p2    # Landroid/support/v7/preference/PreferenceGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 138
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 140
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_7e

    .line 147
    :cond_e
    :try_start_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    :cond_18
    if-eq v2, v3, :cond_35

    .line 151
    new-instance p2, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": No start tag found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 156
    :cond_35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/support/v7/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 159
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, p2, v2}, Landroid/support/v7/preference/PreferenceInflater;->onMergeRoots(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object p2

    .line 162
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    :try_end_46
    .catch Landroid/view/InflateException; {:try_start_e .. :try_end_46} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_46} :catch_6e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_46} :catch_48
    .catchall {:try_start_e .. :try_end_46} :catchall_7e

    .line 178
    :try_start_46
    monitor-exit v0

    return-object p2

    :catch_48
    move-exception p2

    .line 171
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    throw v1

    :catch_6e
    move-exception p1

    .line 167
    new-instance p2, Landroid/view/InflateException;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 169
    throw p2

    :catch_7c
    move-exception p1

    .line 165
    throw p1

    :catchall_7e
    move-exception p1

    .line 179
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_46 .. :try_end_80} :catchall_7e

    throw p1
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultPackages([Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    return-void
.end method
