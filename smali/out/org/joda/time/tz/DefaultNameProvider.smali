.class public Lorg/joda/time/tz/DefaultNameProvider;
.super Ljava/lang/Object;
.source "DefaultNameProvider.java"

# interfaces
.implements Lorg/joda/time/tz/NameProvider;


# instance fields
.field private iByLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private iByLocaleCache2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache:Ljava/util/HashMap;

    .line 38
    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache2:Ljava/util/HashMap;

    return-void
.end method

.method private createCache()Ljava/util/HashMap;
    .registers 3

    .line 159
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method private declared-synchronized getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_cd

    if-eqz p2, :cond_cd

    if-nez p3, :cond_a

    goto/16 :goto_cd

    .line 61
    :cond_a
    :try_start_a
    iget-object v1, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1e

    .line 63
    iget-object v1, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache:Ljava/util/HashMap;

    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 66
    :cond_1e
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_c2

    .line 68
    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getDateFormatSymbols(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    .line 72
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3a
    const/4 v6, 0x5

    if-ge v5, v3, :cond_50

    aget-object v7, v1, v5

    if-eqz v7, :cond_4d

    .line 73
    array-length v8, v7

    if-lt v8, v6, :cond_4d

    aget-object v8, v7, v4

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    goto :goto_51

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_50
    move-object v7, v0

    .line 78
    :goto_51
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDateFormatSymbols(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object p1

    .line 80
    array-length v1, p1

    const/4 v3, 0x0

    :goto_5b
    if-ge v3, v1, :cond_71

    aget-object v5, p1, v3

    if-eqz v5, :cond_6e

    .line 81
    array-length v8, v5

    if-lt v8, v6, :cond_6e

    aget-object v8, v5, v4

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    move-object v0, v5

    goto :goto_71

    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_71
    :goto_71
    if-eqz v7, :cond_c2

    if-eqz v0, :cond_c2

    const/4 p1, 0x2

    .line 88
    aget-object p2, v7, p1

    new-array v1, p1, [Ljava/lang/String;

    aget-object v3, v0, p1

    aput-object v3, v1, v4

    const/4 v3, 0x1

    aget-object v5, v0, v3

    aput-object v5, v1, v3

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    aget-object p2, v7, p1

    const/4 v1, 0x4

    aget-object v5, v7, v1

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x3

    if-eqz p2, :cond_b3

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v7, v1

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-Summer"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/String;

    aget-object v1, v0, v1

    aput-object v1, p1, v4

    aget-object v0, v0, v5

    aput-object v0, p1, v3

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    .line 95
    :cond_b3
    aget-object p2, v7, v1

    new-array p1, p1, [Ljava/lang/String;

    aget-object v1, v0, v1

    aput-object v1, p1, v4

    aget-object v0, v0, v5

    aput-object v0, p1, v3

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_c2
    :goto_c2
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_c8
    .catchall {:try_start_a .. :try_end_c8} :catchall_ca

    monitor-exit p0

    return-object p1

    :catchall_ca
    move-exception p1

    .line 56
    monitor-exit p0

    throw p1

    .line 58
    :cond_cd
    :goto_cd
    monitor-exit p0

    return-object v0
.end method

.method private declared-synchronized getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 14

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_b2

    if-eqz p2, :cond_b2

    if-nez p3, :cond_a

    goto/16 :goto_b2

    :cond_a
    :try_start_a
    const-string p3, "Etc/"

    .line 119
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v1, 0x4

    if-eqz p3, :cond_17

    .line 120
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 123
    :cond_17
    iget-object p3, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache2:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-nez p3, :cond_2b

    .line 125
    iget-object p3, p0, Lorg/joda/time/tz/DefaultNameProvider;->iByLocaleCache2:Ljava/util/HashMap;

    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, v2

    .line 128
    :cond_2b
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_a3

    .line 130
    invoke-direct {p0}, Lorg/joda/time/tz/DefaultNameProvider;->createCache()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {p3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getDateFormatSymbols(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p3

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object p3

    .line 134
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_47
    const/4 v6, 0x5

    if-ge v5, v3, :cond_5d

    aget-object v7, p3, v5

    if-eqz v7, :cond_5a

    .line 135
    array-length v8, v7

    if-lt v8, v6, :cond_5a

    aget-object v8, v7, v4

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    goto :goto_5e

    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_5d
    move-object v7, v0

    .line 140
    :goto_5e
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDateFormatSymbols(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object p1

    .line 142
    array-length p3, p1

    const/4 v3, 0x0

    :goto_68
    if-ge v3, p3, :cond_7e

    aget-object v5, p1, v3

    if-eqz v5, :cond_7b

    .line 143
    array-length v8, v5

    if-lt v8, v6, :cond_7b

    aget-object v8, v5, v4

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    move-object v0, v5

    goto :goto_7e

    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    :cond_7e
    :goto_7e
    if-eqz v7, :cond_a3

    if-eqz v0, :cond_a3

    .line 150
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p2, 0x2

    new-array p3, p2, [Ljava/lang/String;

    aget-object v3, v0, p2

    aput-object v3, p3, v4

    const/4 v3, 0x1

    aget-object v5, v0, v3

    aput-object v5, p3, v3

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-array p2, p2, [Ljava/lang/String;

    aget-object p3, v0, v1

    aput-object p3, p2, v4

    const/4 p3, 0x3

    aget-object p3, v0, p3

    aput-object p3, p2, v3

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_a3
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_ad
    .catchall {:try_start_a .. :try_end_ad} :catchall_af

    monitor-exit p0

    return-object p1

    :catchall_af
    move-exception p1

    .line 115
    monitor-exit p0

    throw p1

    .line 117
    :cond_b2
    :goto_b2
    monitor-exit p0

    return-object v0
.end method


# virtual methods
.method public getName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DefaultNameProvider;->getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_b

    :cond_8
    const/4 p2, 0x1

    .line 53
    aget-object p1, p1, p2

    :goto_b
    return-object p1
.end method

.method public getName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/tz/DefaultNameProvider;->getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_b

    :cond_8
    const/4 p2, 0x1

    .line 112
    aget-object p1, p1, p2

    :goto_b
    return-object p1
.end method

.method public getShortName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DefaultNameProvider;->getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_b

    :cond_8
    const/4 p2, 0x0

    .line 48
    aget-object p1, p1, p2

    :goto_b
    return-object p1
.end method

.method public getShortName(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/tz/DefaultNameProvider;->getNameSet(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_b

    :cond_8
    const/4 p2, 0x0

    .line 107
    aget-object p1, p1, p2

    :goto_b
    return-object p1
.end method
