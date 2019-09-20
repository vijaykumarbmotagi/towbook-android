.class public Lorg/checkerframework/checker/formatter/FormatUtil;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;,
        Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;,
        Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    }
.end annotation


# static fields
.field private static final formatSpecifier:Ljava/lang/String; = "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

.field private static fsPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

    .line 116
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/formatter/FormatUtil;->fsPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asFormat(Ljava/lang/String;[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/formatter/qual/ReturnsFormat;
    .end annotation

    .line 49
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    .line 50
    array-length v1, v0

    array-length v2, p1

    if-eq v1, v2, :cond_10

    .line 51
    new-instance p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;

    array-length p1, p1

    array-length v0, v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;-><init>(II)V

    throw p0

    :cond_10
    const/4 v1, 0x0

    .line 54
    :goto_11
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 55
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    if-eq v2, v3, :cond_24

    .line 56
    new-instance p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;

    aget-object p1, p1, v1

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;-><init>(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)V

    throw p0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    return-object p0
.end method

.method private static conversionCharFromFormat(Ljava/util/regex/Matcher;)C
    .registers 3

    const/4 v0, 0x5

    .line 134
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x6

    .line 136
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    .line 138
    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .line 77
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->tryFormatSatisfiability(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->parse(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    move-result-object p0

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_13
    if-ge v3, v1, :cond_52

    aget-object v7, p0, v3

    .line 87
    invoke-virtual {v7}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->index()I

    move-result v8

    packed-switch v8, :pswitch_data_76

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    goto :goto_25

    :pswitch_22
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    .line 99
    :goto_25
    :pswitch_25
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    goto :goto_44

    :cond_42
    sget-object v9, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 102
    :goto_44
    invoke-virtual {v7}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->category()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v7

    .line 100
    invoke-static {v9, v7}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_52
    add-int/lit8 p0, v4, 0x1

    .line 105
    new-array p0, p0, [Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    :goto_56
    if-gt v2, v4, :cond_74

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    goto :goto_6f

    :cond_6d
    sget-object v1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    :goto_6f
    aput-object v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_74
    return-object p0

    nop

    :pswitch_data_76
    .packed-switch -0x1
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private static indexFromFormat(Ljava/util/regex/Matcher;)I
    .registers 4

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2e

    :cond_16
    const/4 v0, 0x2

    .line 124
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 v2, -0x1

    :cond_2e
    :goto_2e
    return v2
.end method

.method private static parse(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
    .registers 5

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    sget-object v1, Lorg/checkerframework/checker/formatter/FormatUtil;->fsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 145
    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 146
    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->conversionCharFromFormat(Ljava/util/regex/Matcher;)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_b

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_b

    .line 152
    new-instance v2, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    invoke-static {p0}, Lorg/checkerframework/checker/formatter/FormatUtil;->indexFromFormat(Ljava/util/regex/Matcher;)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;-><init>(CI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 155
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;

    return-object p0
.end method

.method public static tryFormatSatisfiability(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
