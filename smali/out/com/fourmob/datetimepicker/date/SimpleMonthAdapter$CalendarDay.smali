.class public Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;
.super Ljava/lang/Object;
.source "SimpleMonthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarDay"
.end annotation


# instance fields
.field private calendar:Ljava/util/Calendar;

.field day:I

.field month:I

.field year:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->setTime(J)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->setDay(III)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->setTime(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .registers 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    const/4 v0, 0x2

    .line 125
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    const/4 v0, 0x5

    .line 126
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    return-void
.end method

.method private setTime(J)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_a

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 134
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    .line 135
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    .line 136
    iget-object p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    return-void
.end method


# virtual methods
.method public set(Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;)V
    .registers 3

    .line 140
    iget v0, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    .line 141
    iget v0, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    .line 142
    iget p1, p1, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    return-void
.end method

.method public setDay(III)V
    .registers 4

    .line 146
    iput p1, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->year:I

    .line 147
    iput p2, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->month:I

    .line 148
    iput p3, p0, Lcom/fourmob/datetimepicker/date/SimpleMonthAdapter$CalendarDay;->day:I

    return-void
.end method
