.class public final enum Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
.super Ljava/lang/Enum;
.source "I18nConversionCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum DATE:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum GENERAL:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum NUMBER:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

.field public static final enum UNUSED:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;


# instance fields
.field public final strings:[Ljava/lang/String;

.field public final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 39
    new-instance v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-string v1, "UNUSED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v2}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 44
    new-instance v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-string v1, "GENERAL"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v2}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 49
    new-instance v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-string v1, "DATE"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/util/Date;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/Number;

    aput-object v6, v5, v4

    const-string v6, "date"

    const-string v7, "time"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v2, v5, v6}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    .line 62
    new-instance v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const-string v1, "NUMBER"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Number;

    aput-object v6, v5, v3

    const-string v6, "number"

    const-string v7, "choice"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v5, v6}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;-><init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V

    sput-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v0, 0x4

    .line 27
    new-array v0, v0, [Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    sget-object v1, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v1, v0, v3

    sget-object v1, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v1, v0, v4

    sget-object v1, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v1, v0, v2

    sget-object v1, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    aput-object v1, v0, v7

    sput-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->$VALUES:[Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    .line 69
    iput-object p4, p0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->strings:[Ljava/lang/String;

    return-void
.end method

.method private static arrayToSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static intersect(Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 6

    .line 113
    sget-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p0, v0, :cond_5

    return-object p1

    .line 115
    :cond_5
    sget-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->UNUSED:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p1, v0, :cond_a

    return-object p0

    .line 117
    :cond_a
    sget-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p0, v0, :cond_f

    return-object p1

    .line 119
    :cond_f
    sget-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->GENERAL:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    if-ne p1, v0, :cond_14

    return-object p0

    .line 122
    :cond_14
    iget-object p0, p0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {p0}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 123
    iget-object p1, p1, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {p1}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 124
    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const/4 p1, 0x2

    .line 125
    new-array p1, p1, [Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    sget-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    array-length v0, p1

    :goto_31
    if-ge v1, v0, :cond_45

    aget-object v2, p1, v1

    .line 126
    iget-object v3, v2, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    invoke-static {v3}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->arrayToSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 127
    invoke-interface {v3, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    return-object v2

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 132
    :cond_45
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static isSubsetOf(Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Z
    .registers 2

    .line 98
    invoke-static {p0, p1}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->intersect(Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;)Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    move-result-object p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static stringToI18nConversionCategory(Ljava/lang/String;)Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 10

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    sget-object v1, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->DATE:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->NUMBER:Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    array-length v1, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_2c

    aget-object v4, v0, v3

    .line 82
    iget-object v5, v4, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->strings:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v6, :cond_29

    aget-object v8, v5, v7

    .line 83
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    return-object v4

    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 87
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid format type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 2

    .line 27
    const-class v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object p0
.end method

.method public static values()[Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;
    .registers 1

    .line 27
    sget-object v0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->$VALUES:[Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    invoke-virtual {v0}, [Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 8

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    if-nez v1, :cond_13

    const-string v1, " conversion category (all types)"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_13
    const-string v1, " conversion category (one of: "

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lafu/org/checkerframework/checker/i18nformatter/qual/I18nConversionCategory;->types:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1f
    if-ge v4, v2, :cond_35

    aget-object v6, v1, v4

    if-nez v5, :cond_2a

    const-string v5, ", "

    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2a
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_1f

    :cond_35
    const-string v1, ")"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :goto_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
