.class public Lorg/joda/time/field/FieldUtils;
.super Ljava/lang/Object;
.source "FieldUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 343
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public static getWrappedValue(III)I
    .registers 3

    if-lt p1, p2, :cond_a

    .line 309
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MIN > MAX"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p0, p1

    if-ltz p0, :cond_13

    .line 316
    rem-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0

    :cond_13
    neg-int p0, p0

    .line 319
    rem-int/2addr p0, p2

    if-nez p0, :cond_1a

    add-int/lit8 p1, p1, 0x0

    return p1

    :cond_1a
    sub-int/2addr p2, p0

    add-int/2addr p2, p1

    return p2
.end method

.method public static getWrappedValue(IIII)I
    .registers 4

    add-int/2addr p0, p1

    .line 292
    invoke-static {p0, p2, p3}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(III)I

    move-result p0

    return p0
.end method

.method public static safeAdd(II)I
    .registers 5

    add-int v0, p0, p1

    xor-int v1, p0, v0

    if-gez v1, :cond_29

    xor-int v1, p0, p1

    if-ltz v1, :cond_29

    .line 67
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The calculation caused an overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " + "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    return v0
.end method

.method public static safeAdd(JJ)J
    .registers 11

    add-long v0, p0, p2

    xor-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_2f

    xor-long v2, p0, p2

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2f

    .line 85
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The calculation caused an overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " + "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    return-wide v0
.end method

.method public static safeDivide(JJ)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_2b

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_2b

    .line 190
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiplication overflows a long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2b
    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static safeMultiply(II)I
    .registers 7

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_15

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    goto :goto_15

    :cond_13
    long-to-int p0, v0

    return p0

    .line 121
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiplication overflows an int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " * "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static safeMultiply(JI)J
    .registers 8

    packed-switch p2, :pswitch_data_58

    int-to-long v0, p2

    mul-long v2, p0, v0

    .line 148
    div-long v0, v2, v0

    cmp-long v4, v0, p0

    if-eqz v4, :cond_56

    .line 149
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiplication overflows a long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " * "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2b
    return-wide p0

    :pswitch_2c
    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_2f
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_54

    .line 139
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiplication overflows a long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " * "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    neg-long p0, p0

    return-wide p0

    :cond_56
    return-wide v2

    nop

    :pswitch_data_58
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_2b
    .end packed-switch
.end method

.method public static safeMultiply(JJ)J
    .registers 11

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_7

    return-wide p0

    :cond_7
    cmp-long v2, p0, v0

    if-nez v2, :cond_c

    return-wide p2

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_54

    cmp-long v2, p2, v0

    if-nez v2, :cond_17

    goto :goto_54

    :cond_17
    mul-long v0, p0, p2

    .line 173
    div-long v2, v0, p2

    cmp-long v4, v2, p0

    if-nez v4, :cond_35

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p0, v2

    const-wide/16 v5, -0x1

    if-nez v4, :cond_2b

    cmp-long v4, p2, v5

    if-eqz v4, :cond_35

    :cond_2b
    cmp-long v4, p2, v2

    if-nez v4, :cond_34

    cmp-long v2, p0, v5

    if-nez v2, :cond_34

    goto :goto_35

    :cond_34
    return-wide v0

    .line 174
    :cond_35
    :goto_35
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiplication overflows a long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " * "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    :goto_54
    return-wide v0
.end method

.method public static safeMultiplyToInt(JJ)I
    .registers 4

    .line 218
    invoke-static {p0, p1, p2, p3}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JJ)J

    move-result-wide p0

    .line 219
    invoke-static {p0, p1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p0

    return p0
.end method

.method public static safeNegate(I)I
    .registers 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_c

    .line 50
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Integer.MIN_VALUE cannot be negated"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    neg-int p0, p0

    return p0
.end method

.method public static safeSubtract(JJ)J
    .registers 11

    sub-long v0, p0, p2

    xor-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_2f

    xor-long v2, p0, p2

    cmp-long v6, v2, v4

    if-gez v6, :cond_2f

    .line 103
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The calculation caused an overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    return-wide v0
.end method

.method public static safeToInt(J)I
    .registers 5

    const-wide/32 v0, -0x80000000

    cmp-long v2, v0, p0

    if-gtz v2, :cond_10

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_10

    long-to-int p0, p0

    return p0

    .line 206
    :cond_10
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot fit in an int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifyValueBounds(Ljava/lang/String;III)V
    .registers 5

    if-lt p1, p2, :cond_6

    if-le p1, p3, :cond_5

    goto :goto_6

    :cond_5
    return-void

    .line 269
    :cond_6
    :goto_6
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static verifyValueBounds(Lorg/joda/time/DateTimeField;III)V
    .registers 5

    if-lt p1, p2, :cond_6

    if-le p1, p3, :cond_5

    goto :goto_6

    :cond_5
    return-void

    .line 234
    :cond_6
    :goto_6
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-virtual {p0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static verifyValueBounds(Lorg/joda/time/DateTimeFieldType;III)V
    .registers 5

    if-lt p1, p2, :cond_6

    if-le p1, p3, :cond_5

    goto :goto_6

    :cond_5
    return-void

    .line 252
    :cond_6
    :goto_6
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method
