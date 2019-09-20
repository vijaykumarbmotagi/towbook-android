.class Lorg/joda/time/convert/ConverterSet;
.super Ljava/lang/Object;
.source "ConverterSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/convert/ConverterSet$Entry;
    }
.end annotation


# instance fields
.field private final iConverters:[Lorg/joda/time/convert/Converter;

.field private iSelectEntries:[Lorg/joda/time/convert/ConverterSet$Entry;


# direct methods
.method constructor <init>([Lorg/joda/time/convert/Converter;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    const/16 p1, 0x10

    .line 36
    new-array p1, p1, [Lorg/joda/time/convert/ConverterSet$Entry;

    iput-object p1, p0, Lorg/joda/time/convert/ConverterSet;->iSelectEntries:[Lorg/joda/time/convert/ConverterSet$Entry;

    return-void
.end method

.method private static selectSlow(Lorg/joda/time/convert/ConverterSet;Ljava/lang/Class;)Lorg/joda/time/convert/Converter;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/convert/ConverterSet;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/joda/time/convert/Converter;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    .line 244
    array-length v1, v0

    move-object v2, p0

    move p0, v1

    :cond_5
    :goto_5
    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_28

    .line 248
    aget-object v4, v0, v1

    .line 249
    invoke-interface {v4}, Lorg/joda/time/convert/Converter;->getSupportedType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p1, :cond_13

    return-object v4

    :cond_13
    if-eqz v5, :cond_1d

    if-eqz p1, :cond_5

    .line 256
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 258
    :cond_1d
    invoke-virtual {v2, v1, v3}, Lorg/joda/time/convert/ConverterSet;->remove(I[Lorg/joda/time/convert/Converter;)Lorg/joda/time/convert/ConverterSet;

    move-result-object p0

    .line 259
    iget-object v0, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    .line 260
    array-length v2, v0

    move v9, v2

    move-object v2, p0

    move p0, v9

    goto :goto_5

    :cond_28
    if-eqz p1, :cond_b2

    if-nez p0, :cond_2e

    goto/16 :goto_b2

    :cond_2e
    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_35

    .line 271
    aget-object p0, v0, v1

    return-object p0

    :cond_35
    move-object v5, v2

    move v2, p0

    :goto_37
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_62

    .line 278
    aget-object v6, v0, p0

    .line 279
    invoke-interface {v6}, Lorg/joda/time/convert/Converter;->getSupportedType()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v5

    move v5, v2

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5f

    if-eq v2, p0, :cond_43

    .line 281
    aget-object v8, v0, v2

    invoke-interface {v8}, Lorg/joda/time/convert/Converter;->getSupportedType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 283
    invoke-virtual {v7, v2, v3}, Lorg/joda/time/convert/ConverterSet;->remove(I[Lorg/joda/time/convert/Converter;)Lorg/joda/time/convert/ConverterSet;

    move-result-object v7

    .line 284
    iget-object v0, v7, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    .line 285
    array-length v5, v0

    add-int/lit8 p0, v5, -0x1

    goto :goto_43

    :cond_5f
    move v2, v5

    move-object v5, v7

    goto :goto_37

    :cond_62
    if-ne v2, v4, :cond_67

    .line 295
    aget-object p0, v0, v1

    return-object p0

    .line 301
    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find best converter for type \""

    .line 302
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" from remaining set: "

    .line 304
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7d
    if-ge v1, v2, :cond_a8

    .line 306
    aget-object p1, v0, v1

    .line 307
    invoke-interface {p1}, Lorg/joda/time/convert/Converter;->getSupportedType()Ljava/lang/Class;

    move-result-object v4

    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5b

    .line 310
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v4, :cond_99

    move-object p1, v3

    goto :goto_9d

    .line 311
    :cond_99
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_9d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], "

    .line 312
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 315
    :cond_a8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b2
    :goto_b2
    return-object v3
.end method


# virtual methods
.method add(Lorg/joda/time/convert/Converter;[Lorg/joda/time/convert/Converter;)Lorg/joda/time/convert/ConverterSet;
    .registers 11

    .line 139
    iget-object v0, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    .line 140
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3d

    .line 143
    aget-object v5, v0, v3

    .line 144
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    if-eqz p2, :cond_14

    .line 147
    aput-object v4, p2, v2

    :cond_14
    return-object p0

    .line 152
    :cond_15
    invoke-interface {p1}, Lorg/joda/time/convert/Converter;->getSupportedType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v5}, Lorg/joda/time/convert/Converter;->getSupportedType()Ljava/lang/Class;

    move-result-object v6

    if-ne v4, v6, :cond_3a

    .line 154
    new-array v4, v1, [Lorg/joda/time/convert/Converter;

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v1, :cond_30

    if-eq v6, v3, :cond_2b

    .line 158
    aget-object v7, v0, v6

    aput-object v7, v4, v6

    goto :goto_2d

    .line 160
    :cond_2b
    aput-object p1, v4, v6

    :goto_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_30
    if-eqz p2, :cond_34

    .line 165
    aput-object v5, p2, v2

    .line 167
    :cond_34
    new-instance p1, Lorg/joda/time/convert/ConverterSet;

    invoke-direct {p1, v4}, Lorg/joda/time/convert/ConverterSet;-><init>([Lorg/joda/time/convert/Converter;)V

    return-object p1

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3d
    add-int/lit8 v3, v1, 0x1

    .line 172
    new-array v3, v3, [Lorg/joda/time/convert/Converter;

    .line 173
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    aput-object p1, v3, v1

    if-eqz p2, :cond_4a

    .line 177
    aput-object v4, p2, v2

    .line 179
    :cond_4a
    new-instance p1, Lorg/joda/time/convert/ConverterSet;

    invoke-direct {p1, v3}, Lorg/joda/time/convert/ConverterSet;-><init>([Lorg/joda/time/convert/Converter;)V

    return-object p1
.end method

.method copyInto([Lorg/joda/time/convert/Converter;)V
    .registers 5

    .line 125
    iget-object v0, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    iget-object v1, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method remove(I[Lorg/joda/time/convert/Converter;)Lorg/joda/time/convert/ConverterSet;
    .registers 9

    .line 216
    iget-object v0, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    .line 217
    array-length v1, v0

    if-lt p1, v1, :cond_b

    .line 219
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_b
    const/4 v2, 0x0

    if-eqz p2, :cond_12

    .line 223
    aget-object v3, v0, p1

    aput-object v3, p2, v2

    :cond_12
    add-int/lit8 p2, v1, -0x1

    .line 226
    new-array p2, p2, [Lorg/joda/time/convert/Converter;

    const/4 v3, 0x0

    :goto_17
    if-ge v2, v1, :cond_25

    if-eq v2, p1, :cond_22

    add-int/lit8 v4, v3, 0x1

    .line 231
    aget-object v5, v0, v2

    aput-object v5, p2, v3

    move v3, v4

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 235
    :cond_25
    new-instance p1, Lorg/joda/time/convert/ConverterSet;

    invoke-direct {p1, p2}, Lorg/joda/time/convert/ConverterSet;-><init>([Lorg/joda/time/convert/Converter;)V

    return-object p1
.end method

.method remove(Lorg/joda/time/convert/Converter;[Lorg/joda/time/convert/Converter;)Lorg/joda/time/convert/ConverterSet;
    .registers 8

    .line 191
    iget-object v0, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    .line 192
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_17

    .line 195
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 196
    invoke-virtual {p0, v3, p2}, Lorg/joda/time/convert/ConverterSet;->remove(I[Lorg/joda/time/convert/Converter;)Lorg/joda/time/convert/ConverterSet;

    move-result-object p1

    return-object p1

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_17
    if-eqz p2, :cond_1c

    const/4 p1, 0x0

    .line 202
    aput-object p1, p2, v2

    :cond_1c
    return-object p0
.end method

.method select(Ljava/lang/Class;)Lorg/joda/time/convert/Converter;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/joda/time/convert/Converter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/joda/time/convert/ConverterSet;->iSelectEntries:[Lorg/joda/time/convert/ConverterSet$Entry;

    .line 50
    array-length v1, v0

    const/4 v2, 0x0

    if-nez p1, :cond_7

    goto :goto_1d

    .line 51
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    .line 55
    :cond_e
    :goto_e
    aget-object v4, v0, v3

    if-eqz v4, :cond_1f

    .line 56
    iget-object v5, v4, Lorg/joda/time/convert/ConverterSet$Entry;->iType:Ljava/lang/Class;

    if-ne v5, p1, :cond_19

    .line 57
    iget-object p1, v4, Lorg/joda/time/convert/ConverterSet$Entry;->iConverter:Lorg/joda/time/convert/Converter;

    return-object p1

    :cond_19
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_e

    :goto_1d
    const/4 v3, 0x0

    goto :goto_e

    .line 66
    :cond_1f
    invoke-static {p0, p1}, Lorg/joda/time/convert/ConverterSet;->selectSlow(Lorg/joda/time/convert/ConverterSet;Ljava/lang/Class;)Lorg/joda/time/convert/Converter;

    move-result-object v4

    .line 67
    new-instance v5, Lorg/joda/time/convert/ConverterSet$Entry;

    invoke-direct {v5, p1, v4}, Lorg/joda/time/convert/ConverterSet$Entry;-><init>(Ljava/lang/Class;Lorg/joda/time/convert/Converter;)V

    .line 79
    invoke-virtual {v0}, [Lorg/joda/time/convert/ConverterSet$Entry;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/joda/time/convert/ConverterSet$Entry;

    .line 82
    aput-object v5, p1, v3

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v1, :cond_3d

    .line 86
    aget-object v3, p1, v0

    if-nez v3, :cond_3a

    .line 88
    iput-object p1, p0, Lorg/joda/time/convert/ConverterSet;->iSelectEntries:[Lorg/joda/time/convert/ConverterSet$Entry;

    return-object v4

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3d
    shl-int/lit8 v0, v1, 0x1

    .line 96
    new-array v3, v0, [Lorg/joda/time/convert/ConverterSet$Entry;

    const/4 v5, 0x0

    :goto_42
    if-ge v5, v1, :cond_61

    .line 98
    aget-object v6, p1, v5

    .line 99
    iget-object v7, v6, Lorg/joda/time/convert/ConverterSet$Entry;->iType:Ljava/lang/Class;

    if-nez v7, :cond_4b

    goto :goto_5a

    .line 100
    :cond_4b
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/lit8 v8, v0, -0x1

    and-int/2addr v7, v8

    .line 101
    :cond_52
    :goto_52
    aget-object v8, v3, v7

    if-eqz v8, :cond_5c

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v0, :cond_52

    :goto_5a
    const/4 v7, 0x0

    goto :goto_52

    .line 106
    :cond_5c
    aput-object v6, v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 110
    :cond_61
    iput-object v3, p0, Lorg/joda/time/convert/ConverterSet;->iSelectEntries:[Lorg/joda/time/convert/ConverterSet$Entry;

    return-object v4
.end method

.method size()I
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/joda/time/convert/ConverterSet;->iConverters:[Lorg/joda/time/convert/Converter;

    array-length v0, v0

    return v0
.end method
