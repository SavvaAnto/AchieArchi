pragma solidity ^0.5.0;

contract AchieArchi {
    
    event NewAchievement(uint achieId, uint achieDate, string achieTitle, string achieDescription);
    
    struct Achievement {
        
        uint date;
        string title;
        string description;
        
    }
    
    Achievement[] listOfAchievments;
    
    function addAchievement(string memory _title, string memory _description) public {
        
        listOfAchievments.push(Achievement(now, _title, _description));
        
        uint id = listOfAchievments.push(Achievement(now, _title, _description)) - 1;
        
        emit NewAchievement(id, listOfAchievments[id].date, listOfAchievments[id].title, listOfAchievments[id].description);
        
    }
    
    function getAchievement(uint _id) public view returns(uint achieDate, string memory achieTitle, string memory achieDescription) {
        
        achieDate = listOfAchievments[_id].date;
        achieTitle = listOfAchievments[_id].title;
        achieDescription = listOfAchievments[_id].description;

    }
    
    function getLengthOfList() public view returns(uint) {
        return listOfAchievments.length;
    }
    
}
