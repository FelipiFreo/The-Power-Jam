def seed_officials_positions

  # Nome do Modelo
  puts "  Posições de Oficiais".colorize(:light_yellow)



  # Destroying
  puts "  - Destruindo registros existentes (!)".colorize(:light_red)
  OfficialPosition.destroy_all



  # Dados
  puts "  - Preparando dados para criação de novos registros".colorize(:green)

    # Arrays de Hashes de Posições de Oficiais
    positions = [
      { official_position: "Head Referee",
        official_position_code: "HR",
        description:"• The Head Referee (HR) will be positioned on the inside of the track as a front or back Inside Pack Referee.
        • Before the beginning of the second period, the HR and the Penalty Box Official will identify any Skaters who still have time to serve that are not seated in the Penalty Box in the correct position. If any Skaters did not self report, the HR will direct the missing Skaters to report before play can begin.
        • If the HR expels a Skater during a jam, the HR will leave the pack and go to the Penalty Box to inform the Skater that they must leave the track for the remainder of the game, as described in The Rules of Flat Track Roller Derby.
        • If the HR does not empower the Penalty Box Officials and/or Jam Timer to call penalties, HR should inform both team captains and the other Officials before the game starts"},

      { official_position: "Inside Pack Referee",
        official_position_code: "IPR",
        description:"• The Inside Pack Referee (IPR) works with the Head Referee on pack definition.
        • The IPR will take a front or back position pending on which position the Head Referee chooses to take. The IPR should try and provide information to the Jammer Referees with regard to the other Jammer status. (Examples: Jammer was sent to the box, lead status, entered behind or in front of the other Jammer.) This communication should be secondary to calling any infractions that occur."},

      { official_position: "Jammer Referee",
        official_position_code: "JR",
        description:"• Jammer Referees (JRs) should be able to visually check with the Scorekeeper (SK) and verify the score reported without losing main focus on the Jammer.
        • JRs will wear colorcoded armbands or wristbands to designate the team to which they are currently assigned. JR helmet covers or other team indicators may be worn, but not to the exclusion of wristbands or armbands."},

      { official_position: "Outside Pack Referees",
        official_position_code: "OPR",
        description:"• OPRs need to be adaptable to switching between the different rotations below based on gameplay, and may need to switch within a given jam, or between jams."},

      { official_position: "Head Non-Skating Official",
        official_position_code: "HNSO",
        description:"• An Off - icial must be appointed as the Head NSO (HNSO). This Official will oversee the Non Skating Officials crew and ensure its proper performance.
        • The HNSO will ensure that the paperwork has been properly populated prior to the game. The HNSO will oversee the distribution and retrieval of the paperwork before and after the game."},

      { official_position: "Penalty Tracker",
        official_position_code: "PT",
        description:"• The Officiating crew will use one Penalty Tracker (PT) and, optionally, a Penalty Wrangler (PW) whose duty will be to help the PT.
        • If an incorrect or nonexistent number is reported, the PT (PW or Inside Whiteboard Operator (IWB), if used) needs to check in with the appropriate Official (or the HR) in between jams.
        • If a Skater reports to the box and no penalty has been reported, the PT (or PW, if used) should check with the Referees during the jam, if gameplay allows it, or at the end of the jam. If it is fully confirmed that no penalty was called on the Skater, they should be released from the Penalty Box.
        • The jam in which the penalty occurred should be recorded on the Penalties sheet, regardless of the jam in which the penalty is served.
        • If a Skater incurs a penalty between two jams, then the jam number of the jam in which the Skater was participating should be used. For example, a late Blocker hit would be recorded in the previous jam, whereas an Illegal Engagement while lining up for a jam would be reported for the upcoming jam.
        • Any Delay of Game penalties should be recorded for the upcoming jam, which is the jam that is being delayed to issue the penalty. If a Delay of Game penalty is not assessed prior to the start of a jam (such as for a queued Skater failing to be on the track), the penalty should be assessed and recorded in the following jam."},

      { official_position: "Penalty Box Officials",
        official_position_code: "PB",
        description:"• Penalty Box Timers (PBT) and the Penalty Box Manager (PBM) should not sit or stand in any location in which they may be confused with a Skater serving a penalty.
        • All communication to Skaters must be accompanied by the appropriate hand signal and verbal cue.
        • The Penalty Box will have a Penalty Box Whiteboard (PBWB) that is split down the center by color (informally known as the“queue board”). If the teams swap benches at halftime, the colors on the PBWB will also be swapped at halftime.
        • When a Skater enters the box, a Penalty Box Official will signal the appropriate side and/or seat.
        • If a Skater refuses to stand, the Penalty Box Official, using the appropriate verbal cue, will inform the Skater that the remaining penalty time will not be timed until they stand.
        • If a Skater sits in the Penalty Box between jams, they are considered to have sat in the upcoming jam.
        • When a Skater arrives at the Penalty Box but there is no seat available for them, a Penalty Box Official will signal to the Skater that the Penalty Box is full with the appropriate hand signal and verbal cue. The PBM must note the position, color and number of the Skater on the PBWB.
        • All Skaters in the queue for the Penalty Box should be listed on the PBWB. The first Skater to physically enter the should be the one to sit. Remaining Skaters stay in queue until another seat has opened.
        • When a Skater has time to serve, a Penalty Box Official displays the Skater’s number on the appropriate side of the PBWB. During a jam in progress, the PBWB should be held up visibly as soon as an open seat in the box is available for the Skater(s) in queue. If a Skater remains in the queue between jams, the Penalty Box Official should hold up the PBWB for the entire 30 seconds between jams to communicate to the Referees which Skaters are in the Penalty Box queue.
        • If the second Jammer arrives in the Penalty Box between jams while the first Jammer is still penalized, the PBM will instruct the first Jammer to stand but not leave the Penalty Box. The first Jammer must start the jam from within the Penalty Box.
        • A Penalty Box Official should answer a Skater or bench staff when they ask how much penalty time is remaining, within reason, if doing so does not disrupt the Penalty Box Official’s primary duties.
        • As long as the Skater is touching the floor within the boundaries of the furthest forward edge of the Penalty Box (the \"Point of No Return\"), they are still considered to be in the box, and need not skate around to enter the box. The boundary line is to be considered “in.” While the “Point of No Return” line may not physically extend onto the track, it is considered to extend through the track, and a Skater who passes that line on the track and skates clockwise to enter the Penalty Box should be instructed to skate around. The Penalty Box Official should use the appropriate verbal cue along with the corresponding hand signal.
        • If a skater fouls outs during a jam, they should sit in the Penalty Box to serve their time. Once the verbal cue to Stand is given, the Skater should be moved to an area in or near the Penalty Box that is not blocking any chairs or Skaters entering/exiting the box. The skaters will wait in this area until the end of the jam. If that skater's team does not take an Official Review, nor is an Official Timeout taken, the PBM or PBT should inform the Skater they are allowed to retrieve any personal items from their bench and then must leave the bench area and cannot return.
        • At the end of a jam, if a Skater has fouled out and still has time remaining, the Penalty Box Official or another Official needs to inform tha t team’s bench that a substitute Skater"},

      { official_position: "Jam Timer",
        official_position_code: "JT",
        description:"• The Jam Timer (JT) is stationed on the inside of the track where they can be seen and heard by both the pack and the Jammers, without being in any Referee’s way.
        • Five seconds before the beginning of the jam, the JT will raise their open hand in the air while using the appropriate verbal cue. Once the jam-starting whistle is blown, the JT will point to the area on the track in front of the foremost Blocker in the pack until all Skaters appear to understand that the jam has begun.
        • Once two minutes have elapsed, the JT should sound four short whistle blasts and use the corresponding hand signal for the end of the jam. If the jam is called off for any other reason, the JT should still echo the Referee whistles, but no hand signal will be used.
        • When a Referee signals for an Official Timeout, the JT should immediately signal four short whistle blasts, stop the Period Clock, and get in position in front of the Pivot Line. The JT must also use the corresponding hand signal for an Official Timeout.
        • During Official Reviews, the JT should stand on the Pivot Line and alternate between the Official Review hand signal and pointing, with both arms, to the bench of the team using their Official Review. When the JT is pointing to the team bench, it should be clear from anywhere in the audience which team initiated the Official Review.
        • If the Captain or their Designated Alternate signals for a timeout, the Official should first confirm that the team has a timeout remaining. Then the JT (or the first Referee to see the signal) calls the timeout by sounding four short whistle blasts. The JT stops the Period Clock and signals to the Scoreboard Operator (SO) that a timeout has occurred. The JT should indicate if the timeout is a team timeout, a team Official Review, or an Official Timeout by using the corresponding hand signal. If required, the JT should correct the visible Period Clock as needed during the timeout.
        • The end of any timeout will be signaled by one rolling/swooping whistle blast.
        • If the 30 seconds are about to expire without the Officials in position, the JT is empowered to call an Official Timeout. PAGE 7 © 2016 Women’s Flat Track Derby Association (WFTDA) Officiating Standard Practices February 2016
        • If the JT is empowered to call Delay of Game penalties, they should check the Penalty Box during the 30 seconds to see if a Skater is in queue. If that Skater is not on the track at the 29.9 second mark, the JT should call an Official Time Out. They should then make the penalty call with the proper verbal cue and hand signal."},

      { official_position: "Scorekeeper",
        official_position_code: "SK",
        description:"• The Scorekeeper (SK) should doublecheck their score during every timeout.
        • SK should verbally communicate the points scored to the Scoreboard Operator (SO) after each pass. At the end of each jam, the SK should confirm the total score of their team with the SO.
        • The SK will visually signal back the exact score for the pass that the Jammer Referee signaled. The Scorekeeper maintains the ability to make eye contact instantaneously, and be signaling the score received until the Jammer Referee verifies it. If the JR cannot verify, the SK should hold the signal until the Jammer reenters the Engagement Zone."},

      { official_position: "Inside Whiteboard",
        official_position_code: "IWB",
        description:"• The IWB should be placed at the center of the track between the Pivot and Jammer Lines, visible to the team benches.
        • Skater numbers should be listed on the IWB in alphanumeric order . The order of characters will start first with 0-9. (Example: 1, 11, 2, 208, 21, 4, 9, etc.) Skater names are not required.
        • Penalties will be represented by the penalty code for the infraction (e.g., “X” for Cutting, “B” for Back Block, etc.), per the codes listed on the Penalty Tracking sheet.
        • The IWB will indicate that a Skater has served their penalty. As each Skater sits in the Penalty Box to serve their penalty, the IWB Operator will place a small dot underneath the penalty code to denote that the Skater has sat for that penalty.
        • The IWB must show a visible record of remaining team timeouts and team Official Reviews.
        • The IWB Operator should be positioned where they can receive penalties from the Penalty Tracker to record on the IWB. They should also assist the Penalty Tracker in picking up any penalties that may be missed."},

    ]



  # Criação
  puts "  - Criando #{positions.size} novas Posições de Oficiais".colorize(:green)

  positions.size.times do |i|

    OfficialPosition.create!(
      official_position: positions[i][:official_position],
      official_position_code: positions[i][:official_position_code],
      description: positions[i][:description]
  )
  end



  # Finalização do bloco
  puts "  - Seeds de Posições de Oficiais criados com sucesso!".colorize(:yellow)
  puts "\n"

  end
