.class public final Lorg/joda/time/Months;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Months.java"


# static fields
.field public static final EIGHT:Lorg/joda/time/Months;

.field public static final ELEVEN:Lorg/joda/time/Months;

.field public static final FIVE:Lorg/joda/time/Months;

.field public static final FOUR:Lorg/joda/time/Months;

.field public static final MAX_VALUE:Lorg/joda/time/Months;

.field public static final MIN_VALUE:Lorg/joda/time/Months;

.field public static final NINE:Lorg/joda/time/Months;

.field public static final ONE:Lorg/joda/time/Months;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final SEVEN:Lorg/joda/time/Months;

.field public static final SIX:Lorg/joda/time/Months;

.field public static final TEN:Lorg/joda/time/Months;

.field public static final THREE:Lorg/joda/time/Months;

.field public static final TWELVE:Lorg/joda/time/Months;

.field public static final TWO:Lorg/joda/time/Months;

.field public static final ZERO:Lorg/joda/time/Months;

.field private static final serialVersionUID:J = 0x136f3c648994183L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    .line 47
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->ONE:Lorg/joda/time/Months;

    .line 49
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->TWO:Lorg/joda/time/Months;

    .line 51
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->THREE:Lorg/joda/time/Months;

    .line 53
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->FOUR:Lorg/joda/time/Months;

    .line 55
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->FIVE:Lorg/joda/time/Months;

    .line 57
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->SIX:Lorg/joda/time/Months;

    .line 59
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->SEVEN:Lorg/joda/time/Months;

    .line 61
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->EIGHT:Lorg/joda/time/Months;

    .line 63
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->NINE:Lorg/joda/time/Months;

    .line 65
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->TEN:Lorg/joda/time/Months;

    .line 67
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->ELEVEN:Lorg/joda/time/Months;

    .line 69
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->TWELVE:Lorg/joda/time/Months;

    .line 71
    new-instance v0, Lorg/joda/time/Months;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->MAX_VALUE:Lorg/joda/time/Months;

    .line 73
    new-instance v0, Lorg/joda/time/Months;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->MIN_VALUE:Lorg/joda/time/Months;

    .line 76
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->months()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Months;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 219
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    return-void
.end method

.method public static months(I)Lorg/joda/time/Months;
    .registers 2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_3c

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_39

    packed-switch p0, :pswitch_data_40

    .line 122
    new-instance v0, Lorg/joda/time/Months;

    invoke-direct {v0, p0}, Lorg/joda/time/Months;-><init>(I)V

    return-object v0

    .line 116
    :pswitch_12
    sget-object p0, Lorg/joda/time/Months;->TWELVE:Lorg/joda/time/Months;

    return-object p0

    .line 114
    :pswitch_15
    sget-object p0, Lorg/joda/time/Months;->ELEVEN:Lorg/joda/time/Months;

    return-object p0

    .line 112
    :pswitch_18
    sget-object p0, Lorg/joda/time/Months;->TEN:Lorg/joda/time/Months;

    return-object p0

    .line 110
    :pswitch_1b
    sget-object p0, Lorg/joda/time/Months;->NINE:Lorg/joda/time/Months;

    return-object p0

    .line 108
    :pswitch_1e
    sget-object p0, Lorg/joda/time/Months;->EIGHT:Lorg/joda/time/Months;

    return-object p0

    .line 106
    :pswitch_21
    sget-object p0, Lorg/joda/time/Months;->SEVEN:Lorg/joda/time/Months;

    return-object p0

    .line 104
    :pswitch_24
    sget-object p0, Lorg/joda/time/Months;->SIX:Lorg/joda/time/Months;

    return-object p0

    .line 102
    :pswitch_27
    sget-object p0, Lorg/joda/time/Months;->FIVE:Lorg/joda/time/Months;

    return-object p0

    .line 100
    :pswitch_2a
    sget-object p0, Lorg/joda/time/Months;->FOUR:Lorg/joda/time/Months;

    return-object p0

    .line 98
    :pswitch_2d
    sget-object p0, Lorg/joda/time/Months;->THREE:Lorg/joda/time/Months;

    return-object p0

    .line 96
    :pswitch_30
    sget-object p0, Lorg/joda/time/Months;->TWO:Lorg/joda/time/Months;

    return-object p0

    .line 94
    :pswitch_33
    sget-object p0, Lorg/joda/time/Months;->ONE:Lorg/joda/time/Months;

    return-object p0

    .line 92
    :pswitch_36
    sget-object p0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    return-object p0

    .line 118
    :cond_39
    sget-object p0, Lorg/joda/time/Months;->MAX_VALUE:Lorg/joda/time/Months;

    return-object p0

    .line 120
    :cond_3c
    sget-object p0, Lorg/joda/time/Months;->MIN_VALUE:Lorg/joda/time/Months;

    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public static monthsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Months;
    .registers 3

    .line 142
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result p0

    .line 143
    invoke-static {p0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p0

    return-object p0
.end method

.method public static monthsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Months;
    .registers 5

    .line 163
    instance-of v0, p0, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_29

    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_29

    .line 164
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalDate;

    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    check-cast p0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide p0

    invoke-virtual {v0, v1, v2, p0, p1}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result p0

    .line 167
    invoke-static {p0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p0

    return-object p0

    .line 169
    :cond_29
    sget-object v0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result p0

    .line 170
    invoke-static {p0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p0

    return-object p0
.end method

.method public static monthsIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Months;
    .registers 3

    if-nez p0, :cond_5

    .line 184
    sget-object p0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    return-object p0

    .line 186
    :cond_5
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object p0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result p0

    .line 187
    invoke-static {p0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p0

    return-object p0
.end method

.method public static parseMonths(Ljava/lang/String;)Lorg/joda/time/Months;
    .registers 2
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    if-nez p0, :cond_5

    .line 204
    sget-object p0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    return-object p0

    .line 206
    :cond_5
    sget-object v0, Lorg/joda/time/Months;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Lorg/joda/time/Period;->getMonths()I

    move-result p0

    invoke-static {p0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 228
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Months;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    .line 351
    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p1

    return-object p1
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .registers 2

    .line 238
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMonths()I
    .registers 2

    .line 257
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    return v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .registers 2

    .line 247
    invoke-static {}, Lorg/joda/time/PeriodType;->months()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public isGreaterThan(Lorg/joda/time/Months;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_c

    .line 374
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result p1

    if-lez p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 376
    :cond_c
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Months;->getValue()I

    move-result p1

    if-le v2, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public isLessThan(Lorg/joda/time/Months;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_c

    .line 387
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result p1

    if-gez p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 389
    :cond_c
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Months;->getValue()I

    move-result p1

    if-ge v2, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public minus(I)Lorg/joda/time/Months;
    .registers 2

    .line 304
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Months;->plus(I)Lorg/joda/time/Months;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/joda/time/Months;)Lorg/joda/time/Months;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    .line 320
    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/Months;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Months;->minus(I)Lorg/joda/time/Months;

    move-result-object p1

    return-object p1
.end method

.method public multipliedBy(I)Lorg/joda/time/Months;
    .registers 3

    .line 334
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result p1

    invoke-static {p1}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p1

    return-object p1
.end method

.method public negated()Lorg/joda/time/Months;
    .registers 2

    .line 362
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Months;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 274
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result p1

    invoke-static {p1}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/joda/time/Months;)Lorg/joda/time/Months;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    .line 290
    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/Months;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Months;->plus(I)Lorg/joda/time/Months;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
